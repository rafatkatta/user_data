class User < ApplicationRecord
    has_many :addresses
    has_many :contacts
    has_one :account
    
    validates :firstname, presence: true
    validates :lastname,  presence: true
    validate  :birthday_format
    
    def birthday_format
       unless birthday.blank? 
    	   if birthday >= Date.today
           errors.add :base, 'you cannot be born today or in the feature'
         end
       end     
    end
end
