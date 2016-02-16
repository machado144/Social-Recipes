FactoryGirl.define do
  factory :admin, class: User do
    email 'admin@adm.com'
    password 'admin1234'
    admin true
  end
end
