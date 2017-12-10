class Gender < ApplicationRecord
  has_many :users
  
  def user_gender
    designation
  end
  
end
