class User < ApplicationRecord
  has_secure_password
  has_many :orders #user has many orders thru users
  has_many :carted_products
  has_many :products, through: :carted_products
  validates :email, presence: true, uniqueness: true
end
