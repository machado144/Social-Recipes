require 'rails_helper'

feature 'Admin register new kind of food' do
  scenario 'succesfully' do
    create(:admin)

    admin_login

    visit root_path

    click_on 'Painel do Administrador'

    click_on 'Cadastrar Preferência'

    fill_in 'Preferência', with: 'Sem Glúten'

    click_on 'Adicionar Preferência'

    click_on 'Listar Preferências'

    expect(page).to have_content 'Sem Glúten'
  end

  scenario 'unsuccessfully' do
    create(:admin)

    admin_login

    visit root_path

    click_on 'Painel do Administrador'

    click_on 'Cadastrar Preferência'

    click_on 'Adicionar Preferência'

    expect(page).to have_content 'Campo obrigatório'
  end
end
