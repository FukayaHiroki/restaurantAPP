class Comment < ApplicationRecord
  belongs_to :restaurant

  validates :name,    length: { in: 1..75 }
  validates :content, length: { in: 1..1000 }
  validates :restaurant_id, presence: true
end
