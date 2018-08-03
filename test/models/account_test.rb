require 'test_helper'


class AccountTest < ActiveSupport::TestCase
  
  def test_account_email
    account = create(:account, password: 'dgsfdfd', email: 'email@mail.com')
    assert account.valid?
  end
  
  def test_account_encrypted_password
   account = create(:account, password: 'ÖhhrdtfgERegffdgrdgb')
   assert account.valid?  
  end
  
  def test_account_no_email
    assert_raise ActiveRecord::RecordInvalid do
     account = create(:account, email: nil)
    end 
  end
  
  def test_account_no_password
    assert_raise ActiveRecord::RecordInvalid do
     account = create(:account, encrypted_password: nil)
   end  
  end  
end
