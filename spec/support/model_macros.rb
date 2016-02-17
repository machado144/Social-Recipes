module ModelsMacros
  def admin_login
    visit root_path

    click_on 'Entrar'

    fill_in 'user_email', with: 'admin@adm.com'
    fill_in 'user_password', with: 'admin1234'

    click_on 'Log in'
  end

  def kind_test
    create(:kind)
    create(:meal_test)
    create(:kitchen_test)
  end

  def meal_test
    create(:meal)
    create(:kitchen_test)
    create(:kind_test)
  end

  def kitchen_test
    create(:kitchen)
    create(:kind_test)
    create(:meal_test)
  end

  def login
    visit root_path

    click_on 'Entrar'

    fill_in 'user_email', with: 'normal@user.com'
    fill_in 'user_password', with: 'user1234'

    click_on 'Log in'
  end

  def count_texts(number, text)
    all(:xpath, "//*[normalize-space()='#{text}']").count == number
  end
end
