class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  belongs_to :category
  validates :name, :price, presence: true
end
