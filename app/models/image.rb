class Image < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :image, ImageUploader
end
