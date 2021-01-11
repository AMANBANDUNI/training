class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :carts
  # scope :min_price, -> { where("price > 50000") }
  scope :min_price, ->(amt) { where("price > ?",amt) } 

  validates :name, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :make, presence: true
end
