class Api::V1::RegistrationsController < Devise::RegistrationsController
  before_action :sign_up_params
  skip_before_action :verify_authenticity_token

  def create
  	if User.create!(sign_up_params)
  	  token = JWT.encode({user_id: User.find_by(email: sign_up_params['email']).id}, 's3cr3t')
  	  # UserMailer.user_confirmation(user).deliver
  	  render json: {status: 'SUCCESS', message: 'New User Created', data: current_user, token: token.to_json}, status: :ok
  	else
  	  render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
  	end
  end

  private

  def sign_up_params
    # params.require(:user).permit(:name,:gender,:phone_number,:email,:password)
    params.permit(:name,:gender,:phone_number,:email,:password)
  end
end