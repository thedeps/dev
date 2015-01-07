class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :tag
      t.string :captain

      t.timestamps
    end
  end
end
