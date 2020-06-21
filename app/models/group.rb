class Group < ApplicationRecord
  has_many :group_posts
  has_many :posts, through: :group_posts
  validates :name, presence: true, uniqueness: true
end
