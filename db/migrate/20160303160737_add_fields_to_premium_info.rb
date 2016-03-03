class AddFieldsToPremiumInfo < ActiveRecord::Migration
  def change
    add_column :premium_infos,:last_name, :string
    add_column :premium_infos,:description,:string
    add_column :premium_infos,:personal_phone,:string
    add_column :premium_infos,:personal_email,:string
    add_column :premium_infos,:website,:string
    add_column :premium_infos,:working_hours,:string
    rename_column :premium_infos, :name, :first_name
  end
end
