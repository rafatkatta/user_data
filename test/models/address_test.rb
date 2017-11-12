require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  def setup 
    @address = create(:address, user: create(:user), data_type: create(:data_type))
  end
  
  def test_address_valid
   assert @address.valid?
  end
  
  def test_address_without_zip
  	@address.zip_code = nil
  	@address.save!
  	assert @address.valid?
  end
  
  def test_address_without_country_code
  	@address.country_code = nil
  	assert_raise ActiveRecord::RecordInvalid do
  	  @address.save!
  	end
  end 
  
    def test_address_wit_blank_country_code
  	@address.country_code = ''
  	assert_raise ActiveRecord::RecordInvalid do
  	  @address.save!
  	end
  end   
end
