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
  before_create :update_name
  after_create :send_email_to_head
  @@var = 1
  @@var1 = 1
  def update_name
  	# debugger
  	# self.name = name + self.category_id.to_s + var.to_s
  	self.name = "#{self.name} #{self.category_id}#{@@var}" if self.category_id == 1
  	self.name = "#{self.name} #{self.category_id}#{@@var1}" if self.category_id == 2
  	@@var += 1
  	@@var1 += 1
  end

  def increment_price
  	self.price = price+10
  end
  
  # before_create do
  #   self.price = price+20  	
  # end

  def send_email_to_head
    # debugger
    ProductMailer.product_confirmation(Product.last).deliver
  end

end
