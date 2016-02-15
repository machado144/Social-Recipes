require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do

    create_recipe('Bolinho', 'Japonesa', 'Jantar', 'Sem Sabor', 3, '5~15 Minutos', 'Médio' ,'Teste', 'Ta+Tb')

    Kind.create(name: 'Sem Sabor')

    visit root_path

    click_on 'Sem Sabor'

    count_texts(1, 'Sem Sabor')

  end
end
