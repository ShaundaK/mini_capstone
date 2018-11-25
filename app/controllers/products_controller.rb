class ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.html.erb"
  end

  def show
    @product = Product.find_by(id: params[:id])
    render "show.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      supplier_id: 1,
      description: params[:description],
      image: [:image]
      )
    @product.save!
    redirect_to "/products"
  end

  def edit
    @product = Product.find_by(id: params[:id])
    render "edit.html.erb"
  end
  
  def update
    @product = Recipe.find_by(id: params[:id])
    @rproduct.name = params[:name] || @product.name
    @product.description = params[:description] || @product.ingredients
    @product.price = params[:price] || @product.price
    @product.save
    redirect_to "/products"
  end
end
