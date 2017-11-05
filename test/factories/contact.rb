FactoryBot.define do
  factory :contact do
    trait :private do
      data_type :private
    end
    
    trait :business do
      data_type :business
    end    
        
  end
  
end
