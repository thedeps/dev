class AddSlugToChampionship < ActiveRecord::Migration
  def change
    add_column :championships, :slug, :string
    add_index :championships, :slug
  end
end
