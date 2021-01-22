module Api
  module V1
	class HomeController < BaseController
  	  # before_action :process_token
  	  def index
  	    render json: current_user
      end

  	  def show
  	    user = User.find(@current_user_id)
        render json: {data: user}
        # render json: current_user.find(id: @current_user_id)
      end

      def create
      end

      def edit 
      end

      def update
      end

      def destroy  	
      end 

    end
  end
end