class User < ActiveRecord::Base
  belongs_to :role                        
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :images
  accepts_nested_attributes_for :images
  has_one :premium_info
  accepts_nested_attributes_for :premium_info
 
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
