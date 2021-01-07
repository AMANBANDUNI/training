class RegistrationsController < Devise::RegistrationsController

  def create
    user = User.new(sign_up_params)

    if user.save
      token = JWT.encode({user_id: User.find_by(email: sign_up_params['email']).id}, 's3cr3t')

      puts token
      puts user.id
      render json: token.to_json
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end



  # def sign_up_params
  # 	params.require(:user).permit(:email, :password)
  # end

  def sign_up_params
  	params.permit(:email, :password)
  end

end