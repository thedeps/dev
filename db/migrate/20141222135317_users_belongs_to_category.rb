class UsersBelongsToCategory < ActiveRecord::Migration
  def change
    add_column :users, :category_id, :int
    add_index :users, :category_id
  end
end
