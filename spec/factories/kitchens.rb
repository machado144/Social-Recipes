FactoryGirl.define do
  factory :kitchens do
    sequence(:name) { |n| "Japonesa #{n}" }
  end
end

FactoryGirl.define do
  factory :kitchen do
    name "Japonesa"
  end
end
