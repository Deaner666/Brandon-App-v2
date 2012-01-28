ActiveAdmin.register Order do

  scope :all
  scope :pending, :default => true
  scope :approved
  scope :declined

  actions :all, :except => [:new, :edit]
  
  member_action :approve, :method => :put do
    order = Order.find(params[:id])
    order.admin_approves_order!
    OrderMailer.order_email(order).deliver
    redirect_to :action => :index
  end
  
  action_item :only => [:show] do
    unless order.status == "approved" || order.status == "incomplete"
      link_to("Approve Order", approve_admin_order_path(order), :method => :put)
    end
  end
  
  member_action :decline, :method => :put do
    order = Order.find(params[:id])
    order.admin_declines_order!
    redirect_to :action => :index
  end
  
  action_item :only => [:show] do
    unless order.status == "approved" || order.status == "declined" || order.status == "incomplete"
      link_to("Decline Order", decline_admin_order_path(order), :method => :put)
    end
  end
  
  index do
    column :id
    column "Branch", :user
    column "Total" do |order|
      format_price order.total
    end
    column :created_at
    column :status
    column "Actions" do |order|
      li link_to "View", admin_order_path(order)
      li link_to "Delete", admin_order_path(order), :method => :delete, :confirm => "Are you sure you want to delete that order?"
    end
  end
  
  show do
    attributes_table do
      rows :id, :user, :created_at, :status
      row "Grand Total" do strong format_price order.total end
      panel "Products" do
        table_for order.line_items do
          column "name" do |line_item|
            line_item.product.name
          end
          column :quantity
          column "total" do |li| format_price li.total end
        end
      end
      
      
      # row "Products" do |order|
      #   for product in order.products do
      #     li product
      #   end
      # end
    end
  end

end