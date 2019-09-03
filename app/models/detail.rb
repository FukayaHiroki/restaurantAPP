class Detail < ApplicationRecord
  belongs_to :restaurant

  validates :restaurant_id, presence: true
  validates :genre, presence: true
  validates :scene, presence: true
end
