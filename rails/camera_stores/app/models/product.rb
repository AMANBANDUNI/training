class Product < ApplicationRecord
  belongs_to :category
  has_and_belongs_to_many :carts
  # scope :min_price, -> { where("price > 50000") }
  scope :price_more_than, ->(amt) { where("price > ?",amt) } 

  validates :name, presence: true
  validates :category, presence: true
  # validates :description, presence: true
  validates :price, presence: true
  validates :make, presence: true

  before_create :increment_price
  before_save :update_name
  @@var = 1
  def update_name
  	# debugger
  	# self.name = name + self.category_id.to_s + var.to_s
  	self.name = "#{self.name} #{self.category_id}#{@@var}"
  	@@var += 1
  end

  def increment_price
  	self.price = price+10
  end
  
  # before_create do
  #   self.price = price+20  	
  # end

end
