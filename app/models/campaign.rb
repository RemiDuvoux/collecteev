class Campaign < ApplicationRecord
  belongs_to :user
  has_many :orders
  mount_uploader :product_image, ImageUploader
  monetize :price_cents
end
