class ProductsController < ApplicationController
  
  before_filter :authenticate_user!, :find_order
  
  # GET /products
  # GET /products.xml
  def index
    @title = "Order Drinks"
    @products = Product.order("position ASC")
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @products }
    end
  end

end
