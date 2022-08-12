class User < ApplicationRecord
  has_many :comment
  has_many :post
  has_many :like

  def recent_post
    # Three recent post
    # 1. Get all post of this user
    posts.order(created_at: :desc).limit(3)
  end
end
