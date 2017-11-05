FactoryBot.define do
  factory :data_type do
    trait :private do
      type :private
    end
    trait :business do
      type :business
    end    
  end
end
