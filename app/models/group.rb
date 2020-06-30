class Group < ApplicationRecord
  has_many :group_posts, dependent: :destroy
  has_many :posts, through: :group_posts, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
