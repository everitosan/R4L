class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :user, index: true
      t.integer :payment_transaction
      t.string :method
      t.float :amount
      
      t.timestamps null: false
    end
  end
end
