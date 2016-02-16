require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do

    kitchen_test

    create(:recipe)

    visit root_path

    click_on 'Japonesa'

    count_texts(2, 'Japonesa')

  end
end
