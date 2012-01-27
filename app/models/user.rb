class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable, :registerable, :recoverable and :omniauthable
  devise :database_authenticatable,
         :rememberable, :trackable, :validatable
  
  validates_uniqueness_of :username

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me
end
