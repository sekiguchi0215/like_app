class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_user, through: :likes, source: :user
  validates :content, presence: true
end
