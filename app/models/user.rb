class User < ApplicationRecord
  validates :name, presence: true
  validates :posts_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  has_many :post
  has_many :like

  def recent_post
    # Three recent post
    # 1. Get all post of this user
    posts.order(created_at: :desc).limit(3)
  end

  def self.inactivated
    # code here
  end
end
