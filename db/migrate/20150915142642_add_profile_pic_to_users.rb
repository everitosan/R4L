class AddProfilePicToUsers < ActiveRecord::Migration
  def up
    add_column :users, :picProfile, :string
  end
  def down
    remove_column :users,  :picProfile
  end
end
