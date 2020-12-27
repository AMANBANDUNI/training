class ProductsController < ApplicationController

  def index
	  # @products = Product.all
	  @products = Product.search(params[:search])
  end

  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

  def new
	  @product = Product.new
  end

  # def new1
	 #  @product = Product.new
  # end

  # def new2
	 #  @product = Product.new
  # end

  def create
	  @product = Product.new(product_params)
	  if @product.save
      # ProductMailer.product_confirmation(@product).deliver
	    redirect_to @product, notice: "Product created successfully."
	  else
	    render :new
	  end
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update(product_params)
  	  redirect_to @product, notice: "Product updated successfully"
  	else
  	  render :edit
  	end
  end

  def destroy
  	@product = Product.find(params[:id])
	  @product.destroy
	  redirect_to products_path, notice: "Product was successfully deleted."
  end

  def multiple_destroy
    Product.where(id: params[:product_ids]).destroy_all
    redirect_to products_path, notice: "Selected products deleted successfully"
  end

  def product_params
	  params.require(:product).permit(:name, :description, :price, :image_url, :search)
  end

end