class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  default_scope -> { order(created_at: :desc) }
  belongs_to :user
end
