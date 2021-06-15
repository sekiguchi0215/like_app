class Post < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liked_user, through: :likes, source: :user
  validates :content, presence: true

  def liked_by?(user)
    likes.any? { |like| like.user_id == user.id }
  end
end
