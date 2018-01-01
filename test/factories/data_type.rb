FactoryBot.define do
  factory :data_type do
    trait :private do
      name :private
    end
    trait :business do
      name :business
    end    
  end
end
