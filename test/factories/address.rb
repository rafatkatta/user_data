FactoryBot.define do
  factory :address do
    country_code 'de'
    zip_code '66125'
    state 'sb'
    city 'Saarbrücken'
    street 'test street'
    house '5 A'
    data_type_id nil
    user_id nil  
  end
end
