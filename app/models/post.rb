class Post < ApplicationRecord
  validates :title, presence: true, length: { maximum: 250 }
  validates :comment_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :comments
  has_many :likes

  def post_update
    # A method that updates the posts counter for a user.
    user.update(posts_counter: user.post.count)
  end

  def recent_comment
    # A method which returns the 5 most recent comments for a given post.
    comments.order(created_at: :desc).limit(5)
  end
end
