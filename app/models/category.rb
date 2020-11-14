class Category < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :products, dependent: :destroy

  has_one_attached :image_uploaded
end
