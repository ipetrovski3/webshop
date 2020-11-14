class Order < ApplicationRecord
  SHIRT_SIZE = %w[S M L XL XXL].freeze
  SHOE_SIZE = %w[36 37 38 39 40 41 42 43 44 45].freeze

  belongs_to :product
end
