FactoryGirl.define do
  factory :kind_test, class: Kind do
    name 'Test1'
  end
end

FactoryGirl.define do
  factory :meal_test, class: Meal do
    name 'Test1'
  end
end

FactoryGirl.define do
  factory :kitchen_test, class: Kitchen do
    name 'Test1'
  end
end
