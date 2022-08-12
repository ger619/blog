class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :author, null:false, foreign_key: { to_table: :users } # user_id
      t.references :post, null:false, foreign_key: { to_table: :posts } # post_id

      t.timestamps
    end
  end
end
