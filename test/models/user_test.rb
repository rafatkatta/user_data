require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = create(:user)
  end
  
  def test_user
    assert @user.valid?
  end
  
  def test_user_without_firstname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, firstname: nil)
    end
  end 

  def test_user_without_lastname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, lastname: nil)
    end
  end 

  def test_user_with_blank_firstname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, firstname: '')
    end
  end 

  def test_user_with_blank_lastname
    assert_raise ActiveRecord::RecordInvalid do
      user = create(:user, lastname: '')
    end
  end    
  
end
