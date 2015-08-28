class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.references :user, index: true
      t.text :text
      t.references :post_context, index: true
      t.integer :contextId
      t.references :post_category, index: true
      t.string :image
      t.string :video
      t.float :like, default: 0

      t.timestamps null: false
    end
  end
end
