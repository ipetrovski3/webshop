module OrdersHelper
  def size
    if @product.category.name == 'Shirts'
      Order::SHIRT_SIZE
    elsif @product.category.name == 'Shoes'
      Order::SHOE_SIZE
    end
  end
end
