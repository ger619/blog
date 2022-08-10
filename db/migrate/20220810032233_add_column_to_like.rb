class AddColumnToLike < ActiveRecord::Migration[7.0]
  def change
    add_column :likes, :author_id, :integer
    add_column :likes, :post_id, :integer
    add_column :likes, :created_at, :timestamp
    add_column :likes, :updated_at, :timestamp
  end
end
