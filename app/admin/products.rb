ActiveAdmin.register Product do
  
  form :html => { :multipart => true } do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :stock_code
      f.input :price, :hint => "In pence. ie. 795 = &pound;7.95"
      f.input :image
    end
    f.buttons
  end
  
  index do
    column :id
    column :name
    column :stock_code
    column :price
    column :created_at
    column :updated_at
    column :image_content_type
    default_actions
  end
  
  show do
    
    attributes_table do
      rows :name, :stock_code, :price
      row :image do
        image_tag product.image.url(:thumbnail)
      end
    end
  end
  
end
