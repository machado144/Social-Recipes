require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do

    Meal.create(name: 'Jantar')

    create_recipe('Bolinho', 1, 1, 1, 3, '5~15 Minutos', 'Médio' ,'Teste', 'Ta+Tb')

    binding.pry

    visit root_path

    click_on 'Jantar'

    count_texts(2, 'Jantar')

  end
end
