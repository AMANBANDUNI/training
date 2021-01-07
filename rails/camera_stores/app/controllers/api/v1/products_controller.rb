module Api
  module V1
    class ProductsController < ApplicationController
      def index
        products = Product.order('created_at ASC')
        render json: {status: 'SUCCESS', message: 'Loaded Products', data: categories}, status: :ok
      end

      def show
        product = Product.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded product', data: product}, status: :ok
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
    end
  end
end