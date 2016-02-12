FactoryGirl.define do
  factory :recipe do
    recipe 'MyString'
    kitchen 'MyString'
    food 'MyString'
    kind 'MyString'
    quantity 1
    time 1
    difficulty 'MyString'
    ingredients 'MyText'
    steps 'MyText'
  end
end
