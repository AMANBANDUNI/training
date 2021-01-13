class ProductMailer < ApplicationMailer
  def product_confirmation(product)
  	@product = product
  	mail to: "abanduni.5@gmail.com", subject: "a new product #{product.name} created"
  end
end