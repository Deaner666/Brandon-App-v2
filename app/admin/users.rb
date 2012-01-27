ActiveAdmin.register User do
  
  index do
    column :email
    column :username
    column :depot_name
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    default_actions
  end
  
  form do |f|
    f.inputs "User Details" do
      f.input :email
      f.input :username
      f.input :password
      f.input :password_confirmation
      f.input :depot_number
      f.input :depot_name
      f.input :address1
      f.input :address2
      f.input :address3
      f.input :address4
      f.input :postcode
    end
    f.buttons
  end
  
end
