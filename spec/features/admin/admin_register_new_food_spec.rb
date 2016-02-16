require 'rails_helper'

feature 'Admin register a new food' do
  scenario 'successfully' do
    create(:admin)

    admin_login

    visit root_path

    click_on 'Painel do Administrador'

    click_on 'Cadastrar Refeição'

    fill_in 'Refeição', with: 'Jantar'

    click_on 'Adicionar Refeição'

    click_on 'Listar Refeições'

    expect(page).to have_content 'Jantar'
  end

  scenario 'unsuccessfully' do
    create(:admin)

    admin_login

    visit root_path

    click_on 'Painel do Administrador'

    click_on 'Cadastrar Refeição'

    click_on 'Adicionar Refeição'

    expect(page).to have_content 'Campo obrigatório'
  end
end
