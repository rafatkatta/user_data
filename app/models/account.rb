class Account < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable, :registerable

  has_one :user

  validates :email, format: { with: Devise.email_regexp }
  validates :encrypted_password, presence: true
  
  def is_admin?
   is_admin
  end
  
  def password_required?
   new_record? ? false : super
  end

end
