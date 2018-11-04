class Api::CartedProductsController < ApplicationController
  def create

    @carted_product = CartedProduct.new(
      status: 'carted',
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id
      )
    @carted_product.save!
    render "show.json.jbuilder"
  end

  def index
    if current_user
      @carted_products = current_user.products
      render :json => @carted_products
    else
      render json: [], status: :unauthorized
    end
  end
end 
