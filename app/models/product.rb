class Product < ApplicationRecord
  belongs_to :user
  has_many :campaigns
  mount_uploader :product_image, ImageUploader
end
