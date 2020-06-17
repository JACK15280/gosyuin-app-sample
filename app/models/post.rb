class Post < ApplicationRecord
  validates :image, :title, :content, presence: true
  mount_uploader :image, ImageUploader
end
