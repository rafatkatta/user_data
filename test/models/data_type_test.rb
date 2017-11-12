require 'test_helper'

class DataTypeTest < ActiveSupport::TestCase
  def test_private
    private_data = create :data_type, :private
    assert private_data.valid?
  end
  
  def test_business
    business_data = create :data_type, :business
    assert business_data.valid?
  end    
end
