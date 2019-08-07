class Image < ApplicationRecord
  belongs_to :restaurant
  mount_uploader :url, ImageUploader
end
