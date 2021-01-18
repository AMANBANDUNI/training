class HomeController < ApplicationController
  before_action :process_token

  def index
  	@user = current_user
  	# debugger
  	# render json: {message: 'Current User', data: User.find(@current_user_id) }, status: :ok
  	respond_to do |format|
  	  format.html {} if current_user
  	  format.json {render json: {message: 'Current User', data: User.all }, status: :ok }
  	end
  	# debugger
  end

  def show
  	user = User.find(@current_user_id)
    render json: {data: user}
    # render json: current_user.find(id: @current_user_id)
  end

  def show_images
  	# debugger
  	@user = User.find_by(id: params[:id])
  	render json: {data: @user.images}
  end

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