class WorkingHoursFromInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :working_hours, :string
    remove_column :premium_infos, :working_hours
  end
end
