class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :authentications, :dependent => :destroy
  accepts_nested_attributes_for :authentications
  has_many :posts, dependent: :destroy
end
