require 'rails_helper'

feature 'User Creates a New Recipe' do
  scenario 'successfully' do
    create(:user)

    login

    Kitchen.create(name: 'Italiana')
    Meal.create(name: 'Sobremesa')
    Kind.create(name: 'Carnes')

    click_on 'Cadastrar Receita'

    fill_in 'Nome da receita', with: 'Bolinhos de bacalhau'
    select 'Italiana', from: 'Cozinha'
    select 'Sobremesa', from: 'Refeição'
    select 'Carnes', from: 'Preferência'
    select '6', from: 'Quantidade'
    select '15~30 Minutos', from: 'Tempo de preparo'
    select 'Médio', from: 'Dificuldade'
    fill_in 'Ingredientes', with: 'bolinhos, bacalhau'
    fill_in 'Passo a passo', with: 'Primeiro pega o bolinho, depois coloca bacalhau dentro'
    attach_file('Arquivo', 'spec/files/BoloBacalhau.png')

    click_on 'Adicionar Receita'

    within('#recipe_1') do
      expect(page).to have_content 'Bolinhos de bacalhau'
      expect(page).to have_content 'Italiana'
      expect(page).to have_content 'Sobremesa'
      expect(page).to have_content 'Carnes'
      expect(page).to have_content '6'
      expect(page).to have_content '15~30 Minutos'
      expect(page).to have_content 'Médio'
      expect(page).to have_content 'bolinhos, bacalhau'
    end

    within('#recipe_2') do
      expect(page).to have_content 'Primeiro pega o bolinho, depois coloca bacalhau dentro'
      expect(page).to have_xpath "//*[@*='Bolobacalhau']"
    end
  end

  scenario 'unsuccessfully and show each error message' do
    create(:user)

    login

    click_on 'Cadastrar Receita'

    click_on 'Adicionar Receita'

    count_texts(6, 'Campo obrigatório')
  end
end
