class User < ActiveRecord::Base
                          
  has_many :user_categories
  has_many :categories, through: :user_categories
  
 
 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable
end
