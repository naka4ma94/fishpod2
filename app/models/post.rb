class Post < ApplicationRecord
  validates :image, presence: true
  validates :size, presence: true, length: { maximum: 2 }
  validates :comment, length: { maximum: 150 }
  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  belongs_to :area
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
end