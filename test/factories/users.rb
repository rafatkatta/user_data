FactoryBot.define do
  factory :user do
    firstname 'First name' 
    lastname 'Last name' 
    birthday '2017-01-01'
    birthplace nil
    birth_country nil
    identity_card_id nil
    account nil
    tax_id nil
    gender 
  end
end
