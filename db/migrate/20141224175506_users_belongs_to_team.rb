class UsersBelongsToTeam < ActiveRecord::Migration
  def change
    add_column :users, :team_id, :int
    add_index :users, :team_id
  end
end
