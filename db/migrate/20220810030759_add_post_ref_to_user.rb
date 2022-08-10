class AddPostRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :PostCounter, null: false, foreign_key: true
  end
end
