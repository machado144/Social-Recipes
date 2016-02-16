FactoryGirl.define do
  factory :recipe do
    recipe 'Bolinhos de bacalhau'
    kitchen_id 1
    meal_id 1
    kind_id 1
    quantity 1
    time "5~15 Minutos"
    difficulty 'Médio'
    ingredients 'bolinhos, bacalhau'
    steps 'Primeiro pega o bolinho, depois coloca bacalhau dentro'
    upload_file_name 'Bolobacalhau.png'
    upload_content_type 'image/png'
  end
end

FactoryGirl.define do
  factory :recipes, class: Recipe do
    sequence(:recipe) { |n| "Receita Número #{n}" }
    quantity 1
    time "5~15 Minutos"
    difficulty "Médio"
    ingredients "Ingredient"
    steps "Steps"
    kitchen_id 1
    meal_id 1
    kind_id 1
  end
end
