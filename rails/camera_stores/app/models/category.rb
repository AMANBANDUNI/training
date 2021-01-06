class Category < ApplicationRecord
  has_many :products

  validates :name, presence: true
  validates :camera_type, presence: true
  validates :model, presence: true
end
