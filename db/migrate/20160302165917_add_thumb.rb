class AddThumb < ActiveRecord::Migration
  def change
    add_column :images, :thumbnail, :string
  end
end
