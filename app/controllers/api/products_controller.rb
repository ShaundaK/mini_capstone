class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "furniture.json.jbuilder"
  end

  def piece_one
    @products = Product.first
    render "furniture_one.json.jbuilder"
  end

  def piece_two
    @products = Product.second
    render "furniture_two.json.jbuilder"
  end
  
  def piece_three
    @products = Product.third
    render "furniture_three.json.jbuilder"
  end
end 
