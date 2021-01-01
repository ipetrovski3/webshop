class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category
  has_one_attached :image_uploaded
  has_many :orders

  validates :name, :price, presence: true

  def resized_image
      image_uploaded.variant(resize_to_limit: [300, 300]).processed
  end
end
