class ProductsController < ApplicationController
  def index
    @category = Category.find(params[:id])
    @products = @category.products.all
  end

  def show
    @category = Category.find(params[:id])
    @product = @categories.products
  end
end
