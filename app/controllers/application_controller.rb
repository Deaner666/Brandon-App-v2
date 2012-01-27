class ApplicationController < ActionController::Base

  protect_from_forgery
  
  def find_order
    if session[:order]
      @order = Order.find_by_id(session[:order], :include => :line_items)
      @order.user_id = current_user.id
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