class RemoveColumnsFromUserInfo < ActiveRecord::Migration
  def change
    remove_column :users, :premium_info_id
    add_reference :premium_infos, :user,  foreign_key: true
  end
end
