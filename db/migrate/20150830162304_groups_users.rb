class GroupsUsers < ActiveRecord::Migration
  def change
    create_table :groups_users, index: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :group, index: true
    end
  end
end
