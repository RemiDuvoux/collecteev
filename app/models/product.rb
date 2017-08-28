class Product < ApplicationRecord
  belongs_to :user
  has_many :campaigns
  mount_uploader :product_image, ImageUploader
  monetize :price_cents
end
