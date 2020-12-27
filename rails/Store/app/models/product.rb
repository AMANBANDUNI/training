class ImageValidator < ActiveModel::Validator
  def validate(record)
    if record.image_url == "evil.jpg"
      # record.errors.add :image_url, "image name cant be evil.jpg"
      record.errors.add(:base, 'image name cant be evil.jpg')
    end
  end
end




class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :price, numericality: true
  # validates :name, uniqueness: true, on: :create
  validates :image_url, format: {with: %r{\.(gif|jpg|png)\z}i,message: "Image is not in the .img,.png,.jpg format."}# , if: :image_is_present?
  validates_with ImageValidator
  validate :name_limits

  before_validation :name_cant_be_empty


  private

  def self.search(search)
  	if search
  	  Product.where(["name LIKE ?","%#{search}%"])
  	else
  	  @products = Product.all
  	end
  end

  def name_limits
    if (name.length < 5) || (name.length > 15) 
      errors.add(:title, "Product name's size should be in between 5..15")
    end
  end

  def name_cant_be_empty
    self.name = "Product_name" if name.blank?
  end


  # def image_is_present?
  #   # debugger
  #   # errors.add(:base, 'xyz') unless image_url != "evil.jpg"
  #   if image_url == "evil.jpg"
  #     errors.add(:base, 'image name cant be evil.jpg')
  #   end
  # end

end
