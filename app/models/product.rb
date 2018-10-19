class Product < ApplicationRecord
  # validates :name, presence: true
  # validates :name, uniqueness: true
  # validates :price, presence: true
  # validates: price, numericality
  # validates: description, 
  def is_discounted?
    price < 50
  end
end
