FactoryBot.define do
  factory :account do
    email "valid_email@valid_domain.com"
    encrypted_password "MyString"
    user nil
  end
end
