class Api::ProductsController < ApplicationController
  def index
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
    @product = Product.new(name: "couch", price: 100, image_url: "", description: "a comfy red couch")
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
    @product.name = "super couch"
    @product.price = 200
    @product.image_url = ""
    @product.description = "a gigantic, comfy couch"
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
