class Api::ProductsController < ApplicationController
  def index
    p 'current_user'
    p current_user
    # @products = Product.all 
    search_term = params[:user_input]
    @products = Product.where('name LIKE ?,' "%#{search_term}%")
    @products = Product.order(:id => :asc)
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
    @product = Product.new(
      name: params[:input_name], 
      price: params[:input_price], 
      description: params[:input_description]
    )
    if @product.save
      render "show.json.jbuilder"
    else
      render "error.json.jbuilder"
    end
  end
  
  def update
    #get the correct product(same as show)
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    #change the product - like create a little
    @product.name = params[:input_name] || @product.name
    @product.price = params[:input_price] || @product.price
    @product.image = params[:input_image] || @product.image
    @product.description = params[:input_description] || @product.description
    if @product.save
    render "show.json.jbuilder"
    else
      render "error.json.jbuilder"
    end
  end 

    def destroy
      #get the product
      product_id = params[:id]
      @product = Product.find_by(id: product_id)
      #destroy the product
      @product.destroy
      render "destroy.json.jbuilder"
  end
end 
