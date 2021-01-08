module Api
  module V1
    class ProductsController < ApplicationController
      before_action :permit_all_params

      def index
        products = Product.order('created_at ASC')
        render json: {status: 'SUCCESS', message: 'Loaded Products', data: products}, status: :ok
      end

      def show
        product = Product.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded product', data: product}, status: :ok
      end

      def show_products_of_specific_category
        products = Product.all
        if Product.find_by(category_id: params[:id])
          render json: {status: 'SUCCESS', message: 'Loaded users Products', data: products}, status: :ok
        else 
          render json: {status: 'FAILURE', message: 'No products found.'}, status: :unprocessable_entity
        end
      end

      def create
        product = Product.new(product_params)
        if product.save
          render json: {status: 'SUCCESS', message: 'saved product', data: product}, status: :ok
        else
          render json: {status: 'ERROR', message: 'product not saved', data: product.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        product = Product.find(params[:id])
        product.destroy
        render json: {status: 'SUCCESS', message: 'product deleted', data: product}, status: :ok
      end

      def update
        product = Product.find(params[:id])
        if product.update(product_params)
          render json: {status: 'SUCCESS', message: 'product updated', data: product}, status: :ok
        else
          render json: {status: 'ERROR', message: 'product not updated', data: product.errors}, status: :unprocessable_entity
        end 
      end

      private

      def product_params
        params.permit(:name, :category_id, :description, :price, :make)
      end

      def permit_all_params
        params.permit!
      end

    end
  end
end