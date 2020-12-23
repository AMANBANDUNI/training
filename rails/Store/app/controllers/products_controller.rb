class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
	@products = Product.all
  end

  def show
  end

  def edit
  end

  def new
	@product = Product.new
  end

  def new1
	@product = Product.new
  end

  def new2
	@product = Product.new
  end

  def create
	@product = Product.new(product_params)
	respond_to do |format|
	  if @product.save
		ProductMailer.product_confirmation(@product).deliver
		format.html { redirect_to @product, notice: "Product created succefully."}
	  else
		format.html { render :new}
	  end
	end	
  end

  def update
	respond_to do |format|
	  if @product.update(product_params)
		format.html {redirect_to @product, notice: "Product updated succefully." }
	  else
		format.html {render :edit }
	  end
	end
  end

  def destroy
	@product.destroy
	  respond_to do |format|
		format.html { redirect_to products_path, notice: "Product was succefully deleted." }
	end
  end

private

  def set_product
	@product = Product.find(params[:id])
  end

  def product_params
	params.require(:product).permit(:name, :description, :price, :image_url)
  end
  
end
