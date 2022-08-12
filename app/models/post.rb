class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  has_many :like

  def post_update
    # A method that updates the posts counter for a user.
    user.increment!(:posts_counter)
  end

  def recent_post
    # A method which returns the 5 most recent comments for a given post.
    comments.order(created_at: :desc).limit(5)
  end
end
