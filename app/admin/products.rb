ActiveAdmin.register Product do
  
  # CanCan
  menu :if => proc{ can? :manage, Product}, :priority => 8
  controller.authorize_resource
  
  form :html => { :multipart => true } do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :stock_code
      f.input :price, :hint => "In pence. ie. 795 = &pound;7.95"
      f.input :position
      f.input :image
    end
    f.buttons
  end
  
  index do
    column :id
    column :name
    column :stock_code
    column :price
    column :position
    column :created_at
    column :updated_at
    column :image_content_type
    default_actions
  end
  
  show do
    
    attributes_table do
      rows :name, :stock_code, :price, :position
      row :image do
        image_tag product.image.url(:thumbnail)
      end
    end
  end
  
end
