class AddPostCategoryToEvents < ActiveRecord::Migration
  def up
    add_column :events, :post_category_id, :integer
  end
  def down
    remove_column :events, :post_category_id, :integer
  end
end
