class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references :user, index: true
      t.references :goal_category, index: true
      t.float :start
      t.float :current
      t.float :desire

      t.timestamps null: false
    end
  end
end
