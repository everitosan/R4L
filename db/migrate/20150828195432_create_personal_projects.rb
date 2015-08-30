class CreatePersonalProjects < ActiveRecord::Migration
  def change
    create_table :personal_projects do |t|
      t.references :user, index: true
      t.string :name
      t.string :socialProblem
      t.string :impact
      t.string :description
      t.string :image
      
      t.timestamps null: false
    end
  end
end
