class Title < ApplicationRecord
  has_many :user
  
  def user_title
    title
  end  
end
