class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  validates :name, presence: true, length: {maximum: 50}
  mount_uploader :image, ImageUploader
  has_many :posts
  has_many :likes
end
