module PagesHelper
  def image_present(category)
    if category.image.present?
      category.image
    else
      category.image_uploaded
    end
  end
end
