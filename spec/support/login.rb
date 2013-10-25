def login
  FactoryGirl.create(:admin)
  visit new_user_session_path
  fill_in 'Email',    with: 'admin@kboo.org'
  fill_in 'Password', with: '12345678'
  click_button 'Sign in'
end