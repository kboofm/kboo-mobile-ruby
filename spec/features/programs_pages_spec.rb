require 'spec_helper'

describe 'Program pages' do
  subject { page }

  describe 'index page' do
    it 'should show all the programs' do
      program = FactoryGirl.create(:program)
      visit programs_path
      page.should have_content program.title
    end
  end

  describe 'show page' do
    it 'should show the progam title, description' do
      program = FactoryGirl.create(:program)
      visit program_path(program.id)
      page.should have_content program.title, program.description
    end
  end
      
  describe 'new page' do
    it 'should create a program' do
      category = FactoryGirl.create(:category) 
      admin = FactoryGirl.create(:admin) 
      program = FactoryGirl.build(:program)
      visit new_program_path
      fill_in 'Title',          with: program.title
      fill_in 'Date',           with: program.date
      fill_in 'Time',           with: program.time
      fill_in 'Description',    with: program.description
      select  category.name,    from: 'program_category_id'
      select  admin.email,      from: 'program_hosts_attributes_0_user_id'
      click_button 'Save Program'
      page.should have_content program.title
    end
  end

  describe 'edit page' do
    it 'should update a program' do
      login
      FactoryGirl.create(:category) 
      program = FactoryGirl.create(:program)
      visit edit_program_path(program.id)
      fill_in 'Title',      with: 'Updating a Program title'
      select  'Technology', from: 'program_category_id'
      click_button 'Submit' 
      page.should have_content 'Updating a Program title'
    end
  end

  describe 'destroy' do
    it 'should delete the program' do
      login
      program = FactoryGirl.create(:program)
      visit program_path(program.id)
      click_link 'Delete'
      page.should_not have_content program.title
    end
  end
end
