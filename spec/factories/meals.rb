FactoryGirl.define do
  factory :meals do
    sequence(:name) { |n| "Sobremesa #{n}" }
  end
end

FactoryGirl.define do
  factory :meal do
    name "Sobremesa"
  end
end
