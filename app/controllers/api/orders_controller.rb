class Api::OrdersController < ApplicationController
  before_action :authenticate_user only: [:create, :delete, :update]
  def create
    # p current_user
    @orders = current_user.orders
    render :json => @orders
    # if current_user
    #   @orders = current_user.orders
    #   render :json => @orders
    # else
    #   render json: [], status: unauthorized
    @order = Order.new(
      user_id: current_user.id, 
      product_id: params[:product_id],
      quantity: params[:quantity]
      )
     
    
    @product = @order.product 
    @order.subtotal = @product.price * @order.quantity
    @order.tax = @product.price * 0.09
    @order.total =@order.subtotal + @order.tax
    @order.save

    render :json => @order
  end

  def index
    # @orders = Order.where(user_id: current_user.id)
    @orders = current_user.orders 
    render :json => @orders 
    # if current_user
    #   @orders = current_user.orders
    #   render :json => @orders
    # else
    #   render json: [], status: :unauthorized
  end
end
