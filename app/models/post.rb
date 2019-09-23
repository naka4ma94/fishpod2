class Post < ApplicationRecord
  validates :image, presence: true
  validates :size, presence: true
  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
  belongs_to :area
  has_many :comments
end