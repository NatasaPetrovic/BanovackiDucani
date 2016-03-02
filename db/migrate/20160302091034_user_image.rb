class UserImage < ActiveRecord::Migration
  def change
    create_table :user_images do |t|
       t.integer :user_id
       t.integer :image_id
     end
  end
end
