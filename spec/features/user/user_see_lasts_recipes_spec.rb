require 'rails_helper'

feature 'user see 20 last recipes' do
  scenario 'successfully' do

    kitchen_test

    create_list(:recipes, 21)

    visit root_path

    binding.pry

    within("div#last_recipes") do
      expect(page).not_to have_content 'Receita Número 1'
    end

  end
end
