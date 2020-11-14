class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :category
  has_one_attached :image_uploaded
  has_many :orders

  validates :name, :price, presence: true
end
