class CreatePostContexts < ActiveRecord::Migration
  def change
    create_table :post_contexts do |t|
      t.string :name
      
      t.timestamps null: false
    end
  end
end
