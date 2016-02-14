module ModelsMacros
  def create_user
    User.create(email: 'normal@user.com', password: 'user1234')
  end

  def create_admin
    User.create(email: 'admin@adm.com', password: 'admin1234', admin: true)
  end

  def admin_login
    visit root_path

    click_on 'Entrar'

    fill_in 'user_email', with: 'admin@adm.com'
    fill_in 'user_password', with: 'admin1234'

    click_on 'Log in'
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
