class Image < ApplicationRecord
  mount_uploader :url, ImageUploader
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :url, presence: true
end
