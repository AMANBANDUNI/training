class User < ApplicationRecord
  has_one :cart
  scope :created_after_8, -> {where "created_at >?", DateTime.now.at_beginning_of_month + 8.day}
  # default_scope {where "created_at > ?", DateTime.now.at_beginning_of_month + 8.day} 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
end
