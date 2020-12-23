class ProductMailer < ApplicationMailer

  # default from: 'no-reply@example.com'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.product_mailer.product_confirmation.subject
  #
  def product_confirmation(product)
    @greeting = "Hi"
    @product = product


    mail to: "amanbanduni27@gmail.com", subject: "Product created confirmation"
    # mail to: "to@example.org", subject: "Product created confirmation"
  end
end
