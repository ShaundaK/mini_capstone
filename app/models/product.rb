class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  # validates: price, numericality
  # validates: description, 

  # def is_discounted?
  #   if price < 50
  #     return true
  #   else
  #     return false
  #   end 
    #price < 50
  # end
end
