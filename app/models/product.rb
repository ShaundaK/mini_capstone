class Product < ApplicationRecord  

  belongs_to :supplier
  has_many :images
  has_many :orders

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0} 
  validates :description, presence: true


  def is_discounted?
    price < 50
  end

  def tax
    tax_rate = 0.09
    price * tax_rate
  end

  def total
    price + tax
  end

  def in_stock?
    return true
  end

  # def supplier
  #   Supplier.find_by(id: supplier_id)
end
