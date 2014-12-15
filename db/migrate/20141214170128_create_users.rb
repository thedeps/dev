class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :id_steam
      t.string :email
      t.string :password
      t.string :category

      t.timestamps
    end
  end
end
