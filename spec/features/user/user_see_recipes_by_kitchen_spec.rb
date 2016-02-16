require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do

    Kitchen.create(name: 'Japonesa')

    create_recipe('Bolinho', 1, 1, 1, 3, '5~15 Minutos', 'Médio' ,'Teste', 'Ta+Tb')

    visit root_path

    click_on 'Japonesa'

    count_texts(2, 'Japonesa')

  end
end
