class Post < ApplicationRecord
  validates :image, presence: true
  validates :size, presence: true, length: { maximum: 2 }, numericality: { only_integer: true }
  validates :comment, length: { maximum: 150 }

  mount_uploader :image, ImageUploader

  belongs_to :user
  belongs_to :area
  has_many :comments
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  include CommonScope
  default_scope -> { order(created_at: :desc) }

  paginates_per 9
end
