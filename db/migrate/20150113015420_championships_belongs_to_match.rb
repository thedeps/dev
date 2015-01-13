class ChampionshipsBelongsToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :championship_id, :int
    add_index :matches, :championship_id
  end
end
