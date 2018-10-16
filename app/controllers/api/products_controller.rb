class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    #showing one recipe
    product_id =params[:id]
    @product = Product.find_by(id: product_id)
    render "show.json.jbuilder"
  end

  def create
    #create a new product
    @product = Product.new(name: "couch", price: 100, image_url: "", description: "a comfy red couch")
    @product.save
    render "show.json.jbuilder"
  end
  
  def piece_three
    @products = Product.third
    render "furniture_three.json.jbuilder"
  end
end 
