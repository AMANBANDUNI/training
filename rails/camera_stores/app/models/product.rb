class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :carts

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :make, presence: true
end
