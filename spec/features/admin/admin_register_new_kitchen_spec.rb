require 'rails_helper'

feature 'Admin register new kitchen' do
  scenario 'successfully' do

    create_admin

    admin_login

    visit root_path

    click_on 'Painel do Administrador'

    click_on 'Cadastrar Cozinha'

    fill_in 'Nome da cozinha', with: 'Africana'

    click_on 'Adicionar Cozinha'

    click_on 'Listar Cozinhas'

    expect(page).to have_content 'Africana'

  end

  scenario 'unsuccessfully' do

    create_admin

    admin_login

    visit root_path

    click_on 'Painel do Administrador'

    click_on 'Cadastrar Cozinha'

    click_on 'Adicionar Cozinha'

    expect(page).to have_content 'Campo obrigatório'

  end
end
