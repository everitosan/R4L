class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.references :user, index: true
      t.references :goal_category, index: true
      t.float :quantity

      t.timestamps null: false
    end
  end
end
