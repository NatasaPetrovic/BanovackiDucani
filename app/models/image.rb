class Image < ActiveRecord::Base
    belongs_to :user
    belongs_to :premium_user
    
    mount_uploader :image, ImageUploader
end
