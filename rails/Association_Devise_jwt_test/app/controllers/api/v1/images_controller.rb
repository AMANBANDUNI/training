module Api
  module V1
    class ImagesController < ApplicationController
      before_action :image_params, only: [:id]

      def index
        images = Image.order('created_at ASC')
        render json: {status: 'SUCCESS', message: 'Loaded images', data: images}, status: :ok
      end

      def show
        image = Image.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded image', data: image}, status: :ok
      end

      def create
        image = Image.new(image_params)
        if image.save
          render json: {status: 'SUCCESS', message: 'saved image', data: image}, status: :ok
        else
          render json: {status: 'ERROR', message: 'image not saved', data: image.errors}, status: :unprocessable_entity
        end
      end

      def destroy
        image = Image.find(params[:id])
        image.destroy
        render json: {status: 'SUCCESS', message: 'image deleted', data: image}, status: :ok
      end

      def update
        image = Image.find(params[:id])
        if image.update(image_params)
          render json: {status: 'SUCCESS', message: 'image updated', data: image}, status: :ok
        else
          render json: {status: 'ERROR', message: 'image not updated', data: image.errors}, status: :unprocessable_entity
        end 
      end

      private

      def image_params
        params.require(:image).permit(:id,:name,:url,:post_id)
      end

    end
  end
end
