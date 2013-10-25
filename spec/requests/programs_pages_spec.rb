require 'spec_helper'

describe 'Program pages' do
  subject { page }
      
  describe 'new page' do
    it 'should create a program' do
      FactoryGirl.create(:category) 
      FactoryGirl.create(:user) 
      visit new_program_path
      fill_in 'Title',          with: 'Integration tests with Capybara'
      fill_in 'Date',           with: '10/25/2014'
      fill_in 'Time',           with: '10:10PM'
      fill_in 'Description',    with: 'Writing efficient UI tests with Capybara and FactoryGirl'
      select  'Technology',     from: 'program_category_id'
      select  'admin@kboo.org', from: 'program_hosts_attributes_0_user_id'
      click_button 'Save Program'
      page.should have_content 'Integration tests with Capybara'
    end
  end

  def login
    FactoryGirl.create(:user)
    visit new_user_session_path
    fill_in 'Email',    with: 'admin@kboo.org'
    fill_in 'Password', with: '12345678'
    click_button 'Sign in'
  end

  describe 'edit page' do
    it 'should update a program' do
      login
      FactoryGirl.create(:category) 
      program = FactoryGirl.create(:program)
      visit edit_program_path(program.id)
      fill_in 'Title', with: 'Updating a Program title'
      select  'Technology',     from: 'program_category_id'
      click_button 'Submit' 
      page.should have_content 'Updating a Program title'
    end
  end
end