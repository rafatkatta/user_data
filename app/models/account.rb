class Account < ApplicationRecord
  belongs_to :user
  validates :email, format: { with: Devise.email_regexp }
  validates :encrypted_password, presence: true
end
