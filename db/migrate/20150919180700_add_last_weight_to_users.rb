class AddLastWeightToUsers < ActiveRecord::Migration
  def up
    add_column :users, :last_weight, :float
  end
  def down
    remove_column :users, :last_weight
  end
end
