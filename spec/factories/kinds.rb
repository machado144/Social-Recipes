FactoryGirl.define do
  factory :kinds do
    sequence(:name) { |n| "Carnes #{n}" }
  end
end

FactoryGirl.define do
  factory :kind do
    name "Carnes"
  end
end
