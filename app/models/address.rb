class Address < ApplicationRecord
  belongs_to :data_type
  belongs_to :user
end
