class Restaurant < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
  
  has_one :detail, dependent: :destroy
  accepts_nested_attributes_for :detail, allow_destroy: true

  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :detail, allow_destroy: true

  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :bests
end
