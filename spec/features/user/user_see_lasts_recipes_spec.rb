require 'rails_helper'

feature 'user see 20 last recipes' do
  scenario 'successfully' do
    kitchen_test

    create(:recipe)
    create_list(:recipes, 20)

    visit root_path

    within('div#last_recipes') do
      expect(page).not_to have_content 'Bolinhos de bacalhau'
    end
  end
end
