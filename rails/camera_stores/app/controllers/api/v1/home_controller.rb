class Api::V1::HomeController < ApplicationController
  before_action :process_token

  def index
  	render json: current_user
  end

  def show
  	user = User.find(@current_user_id)
    render json: {data: user}
    # render json: current_user.find(id: @current_user_id)
  end

  def add_product
  end	

  private 

  def process_token
    if request.headers['Authorization'].present?
      begin
        jwt_payload = JWT.decode(request.headers['Authorization'], 's3cr3t', true, algorithm: 'HS256')
        @current_user_id = jwt_payload[0]['user_id'].to_i
          puts jwt_payload
          # render 'home/index'
      rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
        head :unauthorized
      end
    end
  end


end