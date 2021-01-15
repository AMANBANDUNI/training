class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
  	@product = Product.new
  	# debugger
  end

  def create
  	# debugger
  	@product = Product.new(product_params)
  	if @product.save!
  	  # debugger
  	  redirect_to preview_product_path(@product.id), notice: "New Product Created succefully."
  	else
  	  render :new
  	end
  end

  def preview 
  	@product = Product.find(params[:id])
  end

  private

  def product_params
  	# params.permit(:name,:description,:price,:make, :category_id)
  	params.require(:product).permit(:name,:description,:price,:make, :category_id)
  end

end
