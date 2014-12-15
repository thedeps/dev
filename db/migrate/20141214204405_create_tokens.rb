class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :login
      t.string :token
      t.boolean :verified

      t.timestamps
    end
  end
end
