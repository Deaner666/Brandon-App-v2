class PagesController < ApplicationController
  
  before_filter :find_order, :authenticate_user!
  
  def contact_us
    @title = "Contact us"
  end
  
end
