class ProductsController < ApplicationController
  # before_action :permit_all_params
  def index
	  # @products = Product.all
	  @products = Product.search(params[:search]).paginate(page: params[:page], per_page: 5)
    # @products = Product.paginate(page: params[:page], per_page: 5)
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
    debugger
    if Product.create!(product_params)
      redirect_to products_path, notice: "Product created successfully."
    else
      render :new
    end  
    # debugger
	  # @product = Product.new(product_params)
   #  # debugger
	  # if @product.save
   #    # ProductMailer.product_confirmation(@product).deliver
	  #   redirect_to products_path, notice: "Product created successfully."
	  # else
	  #   render :new
	  # end
  end

  def update
  	@product = Product.find(params[:id])
  	if @product.update(product_params)
  	  redirect_to products_path, notice: "Product updated successfully"
  	else
  	  render :edit
  	end
  end

  def destroy
  	@product = Product.find(params[:id])
	  @product.destroy
	  redirect_to products_path, notice: "Product was successfully deleted."
  end

  def soft_delete
    @product = Product.find(params[:id])
    @product.update(deleted: true)
    redirect_to products_path
  end

  def un_delete
    @product = Product.find(params[:id])
    @product.update(deleted: false)
    redirect_to products_path
  end

  def multiple_destroy
    Product.where(id: params[:product_ids]).destroy_all
    redirect_to products_path, notice: "Selected products deleted successfully"
  end

  def product_params
	  params.require(:product).permit(:name, :description, :price, :image_url, :search)
  end
  
  # def permit_all_arams
  #   params.permit!
  # end
end

