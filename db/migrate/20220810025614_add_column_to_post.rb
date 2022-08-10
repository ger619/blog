class AddColumnToPost < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :author_id, :integer
    add_column :posts, :title, :string
    add_column :posts, :text, :string
    add_column :posts, :created_at, :timestamp
    add_column :posts, :updated_at, :timestamp
    add_column :posts, :comments_counter, :integer
    add_column :posts, :likes_counter, :integer
  end
end
