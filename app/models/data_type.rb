class DataType < ApplicationRecord
    has_many :addresses
    has_many :contacts
end
