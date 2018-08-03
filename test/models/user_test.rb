require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @account = create(:account)
    @user = create(:user, account: @account)
  end
  
  def test_user
    assert @user.valid?
  end
  
  def test_user_without_firstname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, firstname: nil, account: @account)
    end
  end 

  def test_user_without_lastname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, lastname: nil, account: @account)
    end
  end 

  def test_user_with_blank_firstname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, firstname: '', account: @account)
    end
  end 

  def test_user_with_blank_lastname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, lastname: '', account: @account)
    end
  end
  
  def test_user_with_birthday
    user = create(:user, birthday: Date.today - 20.years, account: @account)
    assert user.valid?
  end    
  
  def test_user_with_unvalid_birthday
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, birthday: Date.today, account: @account)
    end
  end
  
    def test_user_with_older_than_135
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, birthday: (Date.today - 136.year ))
    end
  end
  
end
