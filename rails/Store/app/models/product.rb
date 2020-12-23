class Product < ApplicationRecord

  def self.search(search)
  	if search
  	  Product.where(["name LIKE ?","%#{search}%"])
  	  # name_type = Product.find_by(name: search)
  	  #   if name_type
  	  #     Product.where(id: name_type)
  	  #   else
  	  #     @products = Product.all
  	  #   end
  	else
  	  @products = Product.all
  	end
  end

end
