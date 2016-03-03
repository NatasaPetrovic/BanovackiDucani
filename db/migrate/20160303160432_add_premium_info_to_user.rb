class AddPremiumInfoToUser < ActiveRecord::Migration
  def change
    add_reference :users, :premium_info, foreign_key: true
  end
end
