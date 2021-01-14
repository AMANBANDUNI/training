class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def create
  end

  def preview 
  end

  private

  def product_params
  	params.permit(:name)
  end

end
