class DropJoinTables < ActiveRecord::Migration
  def change
    drop_table :categories_users
    drop_table :tags_users
  end
end
