class ProductMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.product_confirmation.subject
  #
  def product_confirmation(product)
    @greeting = "Hi"
    @product = product


    mail to: "abanduni.5@gmail.com", subject: "Product created confirmation"
    # mail to: "to@example.org", subject: "Product created confirmation"
  end
end
