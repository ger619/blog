class AddPostRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :post_counter, null: false, foreign_key: true
  end
end
