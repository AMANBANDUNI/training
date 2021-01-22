module Api
  module V1
    class BaseController < ActionController::API
      respond_to :json
      before_action :process_token

      private

      def process_token
  	    if request.headers['Authorization'].present?
  	      begin
  	        jwt_payload = JWT.decode(request.headers['Authorization'], 's3cr3t', true, algorithm: 'HS256')
  	        @current_user_id = jwt_payload[0]['user_id'].to_i
  	      rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
  	  	    render json: {status: 404, message: "Unauthorized User"}
  	      end
  	    end
      end

      def authenticate_user!(options = {})
        head :unauthorized unless signed_in?
      end

      def signed_in?
        @current_user_id.present?
      end

      def current_user
        # @current_user ||= super || User.find_by(id: @current_user_id)
        @current_user = User.find_by(id: @current_user_id)
      end 

    end

  end
end