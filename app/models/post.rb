class Post < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :latlng, presence: true

  has_one_attached :image
end
