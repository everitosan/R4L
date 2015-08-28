class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.text :address
      t.integer :zipCode
      t.string :country
      t.string :telephone
      t.string :password
      t.boolean :verified, default: false

      t.timestamps null: false
    end
  end
end
