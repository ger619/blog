class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, presence: true, length: { maximum: 50 }
  # validates :posts_counter, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  has_many :posts, foreign_key: 'user_id', dependent: :destroy
  has_many :comments, foreign_key: 'user_id', dependent: :destroy
  has_many :likes, foreign_key: 'user_id', dependent: :destroy

  Roles = %i[user admin].freeze

  def is?(role)
    self.role == role.to_s
  end

  def recent_post
    # Three recent post
    # 1. Get all post of this user
    posts.order(created_at: :desc).limit(3)
  end
end
