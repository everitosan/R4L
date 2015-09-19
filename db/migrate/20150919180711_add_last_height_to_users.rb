class AddLastHeightToUsers < ActiveRecord::Migration
  def up
    add_column :users, :last_height, :float 
  end
  def down
    remove_column :users, :last_height
  end
end
