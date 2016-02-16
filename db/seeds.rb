require 'factory_girl_rails'

User.create(email: 'admin@adm.com', password: 'admin1234', admin: true)

FactoryGirl.create :kind
FactoryGirl.create :kitchen
FactoryGirl.create :meal
21.times do
  FactoryGirl.create :recipe
end
