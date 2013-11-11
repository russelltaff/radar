class User < ActiveRecord::Base
  validates :email, presence: true, uniqueness: true 
  validates :name, presence: true 
  validates :type, presence: true 

  has_secure_password 
end

