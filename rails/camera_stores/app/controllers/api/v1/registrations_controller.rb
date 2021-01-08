class Api::V1::RegistrationsController < Devise::RegistrationsController
  # before_action :create_cart

  def create
    user = User.new(sign_up_params)

    if user.save
      create_cart(user.id)
      token = JWT.encode({user_id: User.find_by(email: sign_up_params['email']).id}, 's3cr3t')

      # puts token
      # puts user.id
      # render json: token.to_json
      render json: {status: 'SUCCESS', message: 'New User Created', data: user, token: token.to_json}, status: :ok
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  def create_cart(id)
    @cart = Cart.create(user_id: id)
  end

  private

  # def sign_up_params
  # 	params.require(:user).permit(:email, :password)
  # end

  def sign_up_params
  	params.permit(:email, :password)
  end

end