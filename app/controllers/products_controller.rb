class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @products = @category.products.all
  end

  def show
    @product = Product.friendly.find(params[:id])
  end
end
