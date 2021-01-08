class Api::V1::CartsProductsController < ApplicationController
  before_action :permit_all_params

  def add_product_to_cart
    # @cart_products = CartsProduct.new()
    # @user = User.find_by(id: params[:id])
    @user = User.find_by(id: params['user'])
    products = params['products'].split(',')
    products.each do |product_id|
      @user.cart.products << Product.find_by(id: product_id)
    end
    render json: {message: "product added to cart",data: @user.cart.products}
  end
  
  # Show the Cart_id of the user.
  def show
  	# debugger
    @cart = Cart.find_by(user_id: params[:id])
    
    render json: {data: @cart}
  end

  def permit_all_params
    params.permit!
  end

end