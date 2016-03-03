class UserCategory < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    belongs_to :premium_user
end