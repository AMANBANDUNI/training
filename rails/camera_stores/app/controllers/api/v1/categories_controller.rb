module Api
  module V1
  	class CategoriesController < ApplicationController

      before_action :permit_all_params

  	  def index
  	  	categories = Category.order('created_at ASC')
  	  	render json: {status: 'SUCESS', message: 'Loaded Categories', data: categories}, status: :ok
  	  end

  	  def show
  	  	category = Category.find(params[:id])
  	  	render json: {status: 'SUCCESS', message: 'Loaded category', data: category}, status: :ok
  	  end

  	  def create
  	  	category = Category.new(category_params)
  	  	if category.save
  	  	  render json: {status: 'SUCCESS', message: 'saved category', data: category}, status: :ok
  	    else
  	      render json: {status: 'ERROR', message: 'category not saved', data: category.errors}, status: :unprocessable_entity
  	    end
  	  end

  	  def destroy
  	  	category = Category.find(params[:id])
  	  	category.destroy
  	  	render json: {status: 'SUCCESS', message: 'category deleted', data: category}, status: :ok
  	  end

  	  def update
  	    category = Catetegorgory.find(params[:id])
  	    if category.update(category_params)
  	      render json: {status: 'SUCCESS', message: 'category updated', data: category}, status: :ok
  	    else
  	      render json: {status: 'ERROR', message: 'category not updated', data: category.errors}, status: :unprocessable_entity
  	    end 
  	  end

  	  private

  	  def category_params
  	  	params.permit(:name, :camera_type, :model)
  	  end

     def permit_all_params
       params.permit!
     end
      
  	end
  end
end