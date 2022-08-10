class AddColumnToComment < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :author_id, :integer
    add_column :comments, :post_id, :integer
    add_column :comments, :Text, :string
    add_column :comments, :updated_at, :timestamp
    add_column :comments, :created_at, :timestamp
  end
end
