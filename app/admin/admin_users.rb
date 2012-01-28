ActiveAdmin.register AdminUser do
  
  # CanCan
  menu :if => proc{ can?(:manage, AdminUser) }, :priority => 10 # Why isn't this working?
  controller.authorize_resource
  
  index do
    column :email
    column :current_sign_in_at
    column :last_sign_in_at
    column :sign_in_count
    column :superuser
    default_actions
  end
  
  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :superuser
      f.input :password
      f.input :password_confirmation
    end
    f.buttons
  end
  
end
