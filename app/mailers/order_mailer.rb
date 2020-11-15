class OrderMailer < ApplicationMailer
  default from: 'admin@webshop.mk'

  def order_email
    @order = params[:order]
    mail(to: 'ipetrovski3@gmail.com', subject: 'New Order')
  end
end
