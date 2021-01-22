class Api::V1::RegistrationsController < Devise::RegistrationsController
  before_action :sign_up_params
  skip_before_action :verify_authenticity_token

  def create
    user = User.new(sign_up_params)
    if user.save
      token = JWT.encode({user_id: User.find_by(email: sign_up_params['email']).id}, 's3cr3t')
      render json: {status: "SUCCESS",message: "New User Created", data: user, token: token.to_json}, status: :ok
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  def sign_up_params
  	params.permit(:name,:phone_number,:gender,:profile_pic,:email,:password)
  end
end