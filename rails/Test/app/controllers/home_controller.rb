class HomeController < ApplicationController
  def index
    @products = Product.all
  end

  def show

  end

  def create
  end

  def preview 
  end

end
