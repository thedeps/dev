class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :team1_id
      t.integer :team2_id
      t.datetime :date_match
      t.string :link

      t.timestamps
    end
  end
end
