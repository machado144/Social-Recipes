require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do
    kind_test

    create(:recipe)

    visit root_path

    click_on 'Carnes'

    count_texts(2, 'Carnes')
  end
end
