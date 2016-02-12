module ModelsMacros
  def create_user
    User.create(email: 'normal@user.com', password: 'user1234')
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
