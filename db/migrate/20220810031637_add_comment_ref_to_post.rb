class AddCommentRefToPost < ActiveRecord::Migration[7.0]
  def change
    add_reference :posts, :CommentCounter, null: false, foreign_key: true
  end
end
