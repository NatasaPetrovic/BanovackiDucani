class DeleteUserImage < ActiveRecord::Migration
  def change
    drop_table :user_images
  end
end
