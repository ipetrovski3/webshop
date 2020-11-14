class OrdersController < ApplicationController
  before_action :set_product, only: %i[new create]

  def new
    @order = @product.orders.build
  end

  def create
    @order = @product.orders.build(order_params)
    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def show; end

  private

  def set_product
    @product = Product.friendly.find(params[:product_id])
  end

  def order_params
    params.require(:order).permit(:first_name, :last_name, :email, :phone, :address, :qty, :size)
  end
end
