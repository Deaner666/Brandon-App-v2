class ApplicationController < ActionController::Base

  protect_from_forgery
  
  def current_ability
    @current_ability ||= Ability.new(current_admin_user)
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to admin_dashboard_path, :alert => exception.message
  end
  
  def find_order
    if session[:order]
      @order = Order.find_by_id(session[:order], :include => :line_items)
      @order.user_id = current_user.id if user_signed_in?
    else
      if user_signed_in?
        @order = Order.create!(:user_id => current_user.id)
      else
        @order = Order.create!(:user_id => 0)
      end
      session[:order] = @order.id
    end
  end
  
end