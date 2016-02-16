require 'rails_helper'

feature 'user see recipes by kitchen' do
  scenario 'succesfully' do

    meal_test

    create(:recipe)

    visit root_path

    click_on 'Sobremesa'

    count_texts(2, 'Sobremesa')

  end
end
