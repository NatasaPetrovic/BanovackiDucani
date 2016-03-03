class CreatePremiumInfos < ActiveRecord::Migration
  def change
    create_table :premium_infos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
