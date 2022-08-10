class AddCommentRefToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :comment_counter, null: false, foreign_key: true
  end
end
