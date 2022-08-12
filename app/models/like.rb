class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def likes_update
    # A method that updates the likes counter for a post.
    post.increment!(:likes_counter)
  end
end
