module CategoriesHelper
  def image_product(product)
    if product.image_url.present?
      product.image_url
    else
      product.image_uploaded
    end
  end
end
