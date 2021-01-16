class User < ApplicationRecord
  has_one :account
  has_many :posts
  has_one :bio, through: :account
  has_many :images,through: :posts
end
