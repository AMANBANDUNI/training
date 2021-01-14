class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :carts

  validates :name, presence: true
  validates :make, numericality: true
end
