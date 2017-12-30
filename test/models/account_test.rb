require 'test_helper'


class AccountTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
  end
  
  def test_account_with_user
    assert_raise ActiveRecord::RecordInvalid do
      account = create(:account, user: @user)
    end  
  end
  
  def test_account_email
  	 account = create(:account, password: 'dgsfdfd', email: 'email@mail.com', user: @user)
  	 assert account.valid?
  end
  
  def test_account_encrypted_password
  	 account = create(:account, password: 'ÖhhrdtfgERegffdgrdgb', user: @user)
  	 assert account.valid?  
  end
  
  def test_account_without_user
    assert_raise ActiveRecord::RecordInvalid do
      account = create(:account)
    end
  end
  
  def test_account_no_email
    assert_raise ActiveRecord::RecordInvalid do
  	   account = create(:account, email: nil, user: @user)
  	 end 
  end
  
  def test_account_no_password
    assert_raise ActiveRecord::RecordInvalid do
  	   account = create(:account, encrypted_password: nil, user: @user)
  	 end  
  end  
end
