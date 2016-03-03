class AddFieldsToPremium < ActiveRecord::Migration
  def change
    add_column :premium_users, :name, :string
    add_column :premium_users, :first_name, :string
    add_column :premium_users, :last_name, :string
    add_column :premium_users, :personal_phone, :string
    add_column :premium_users, :personal_email, :string
    add_column :premium_users, :website, :string
    add_column :premium_users, :working_time, :string
    add_column :premium_users, :phone, :string
    add_column :premium_users, :address, :string
    add_column :premium_users, :description, :string
  end
end
