class CreateChampionships < ActiveRecord::Migration
  def change
    create_table :championships do |t|
      t.string :name
      t.string :prize

      t.timestamps
    end
  end
end
