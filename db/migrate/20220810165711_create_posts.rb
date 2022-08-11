class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.references :author, null:false, foreign_key: { to_table: :users } # author_id
      t.string :title
      t.string :text
      t.integer :comment_counter
      t.integer :likes_counter

      t.timestamps
    end
  end
end