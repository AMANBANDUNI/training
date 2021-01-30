class User < ApplicationRecord
  mount_uploader :profile_pic, FileUploader
  has_many :contacts
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  after_create :user_confirmation

  def user_confirmation
  	user = User.last
  	# debugger
  	UserMailer.user_confirmation(user).deliver
  end
end
