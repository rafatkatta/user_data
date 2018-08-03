class User < ApplicationRecord
    has_many :addresses
    has_many :contacts
    belongs_to :account
    belongs_to :gender
    belongs_to :title, optional: true
    
    validates :firstname, presence: true
    validates :lastname,  presence: true
    validate  :birthday_format
    validate  :olderst
    
    delegate :user_gender, to: :gender
    delegate :user_title, to: :title 
    
    def birthday_format
       unless birthday.blank? 
    	   if birthday >= Date.today
           errors.add :base, 'you cannot be born today or in the feature'
         end
       end     
    end
    
    def olderst
      unless max_old.nil?    
       unless max_old
         errors.add :base, 'you cannot be older than 135 years'        
       end
      else
       true
      end 
    end
    
    def max_old
      unless old.nil?
     	  old <= 135
      else
        nil
      end	
    end
    
    def of_age
      unless old.nil?
     	  old >= 18
      else
        nil
      end	
    end
    
    def be_age
      unless old.nil?
     	  old >= 16
      else
        nil
      end	 
    end

    def old
      unless birthday.blank?
    	 Date.today.year - birthday.year
    	else
    	 nil 
    	end  
    end 
      
end
