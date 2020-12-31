class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :omniauthable, :validatable, authentication_keys: [:email, :user_name], omniauth_providers: [:twitter]
  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.user_name = auth.info.name
  #   end
  # end

  # def self.new_with_session(params, session) 
  #   if session["devise.subscriber_attributes"]                                                                  
  #     new(session["devise.subscriber_attributes"], without_protection: true) do |subscriber| 
  #       subscriber.attributes = params                                                   
  #       subscriber.valid? 
  #     end                                                                                     
  #   else 
  #     super                                                                                            
  #   end 
  # end 
         
  # def password_required?                                                                     
  #   super && provider.blank? 
  # end 

  # def self.find_or_create_from_auth_hash(auth_hash)
  #   user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
  #   user.update(
  #     user_name: auth_hash.info.nickname,
  #     email: auth_hash.info.email,
  #     secret: auth_hash.credentials.secret
  #   )
  #   user
  # end

  attr_accessor :skip_password_validation

  def password_required?
    return false if skip_password_validation
    super
  end

end
