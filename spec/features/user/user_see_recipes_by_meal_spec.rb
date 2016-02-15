require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do

    create_recipe('Bolinho', 'Japonesa', 'Jantar', 'Sem Glutén', 3, '5~15 Minutos', 'Médio' ,'Teste', 'Ta+Tb')

    Meal.create(name: 'Jantar')

    visit root_path

    click_on 'Jantar'

    count_texts(1, 'Jantar')

  end
end
