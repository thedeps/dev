class AddFriendlyToMatches < ActiveRecord::Migration
  def change
    add_column :matches, :friendly, :boolean, default: false
  end
end
