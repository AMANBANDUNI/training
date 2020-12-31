# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/heartcombo/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end

  # def twitter 

  #   @user = User.from_omniauth(request.env["omniauth"]) 

  #   if @user.persisted? 
  #    sign_in_and_redirect @user, :event => :authentication 
  #    set_flash_message(:notice, :success, :kind => "twitter") if is_navigational_format? 
  #   else 
  #    session["devise.twitter_data"] = request.env["omniauth.auth"] 
  #    redirect_to new_user_registration_url 
  #   end 
  #   end 

  #   def failure 
  #     redirect_to root_path 
  #   end 

  def twitter

    from_twitter_params
    user = create_user

    if user.present?
      sign_out_all_scopes
      flash[:success] = t 'devise.omniauth_callbacks.success', kind: 'twitter' 
      sign_in_and_redirect user, event: :authentication
    else
      flash[:alert] = t 'devise.omniauth_callbacks.failure', kind: 'twitter', reason: "#{auth.info.email} is not authorized."
      redirect_to new_user_session_path
    end
  end

  protected

  def after_omniauth_failure_path_for(_scope)
    new_user_session_path
  end

  def after_sign_in_path_for(resource_or_scope)
    stored_location_for(resource_or_scope) || root_path
  end

  private

  def from_twitter_params
    @from_twitter_params ||= {
      email: auth.info.email,
      user_name: auth.info.username
      
    }
  end

  def auth
    @auth ||= request.env['omniauth.auth']
  end

  def create_user
    User.create_with(skip_password_validation: true, user_name: @from_twitter_params[:username]).find_or_create_by(email: @from_twitter_params[:email])
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(email: data['email']).first

    unless user
      user = User.create(name: data['name'],
        email: data['email'],
        password: Devise.friendly_token[0,20]
      )
    end
    user
  end

end
