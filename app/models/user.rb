class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications
  has_many :posts, dependent: :destroy
  has_many :stamps, dependent: :destroy
  has_many :stamps_posts, through: :stamps, source: :post

end
