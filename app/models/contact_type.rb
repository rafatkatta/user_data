class ContactType < ApplicationRecord

	validate :validate_contact_type
	
	def validate_contact_type
	  if validation
	   return false if validation_regx.nil
	  end
	  true
	end
	
	def is_active
	 active
	end
	
end
