class User < ApplicationRecord
    has_many :addresses
    has_many :contacts
    has_one :account
    
    validates :firstname, presence: true
    validates :lastname,  presence: true
end
