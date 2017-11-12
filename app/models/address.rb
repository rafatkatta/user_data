class Address < ApplicationRecord
  belongs_to :data_type
  belongs_to :user
  
  validates :country_code, presence: true
  validates :city,  presence: true
  validates :street,  presence: true
  validates :house,  presence: true
end
