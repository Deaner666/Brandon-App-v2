class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable, :registerable, :recoverable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable, :authentication_keys => [:username]
  
  validates_presence_of :username
  validates_uniqueness_of :username
  # validates_numericality_of :depot_number, :only_integer => true

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :depot_number,
                  :depot_name, :address1, :address2, :address4, :address4, :postcode
end
