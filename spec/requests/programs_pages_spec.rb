describe 'Program pages' do
  subject { page }

  describe 'new page' do
    it 'should create a program' do
      FactoryGirl.create(:category) 
      FactoryGirl.create(:user) 
      visit new_program_path
      # save_and_open_page
      fill_in 'Title',                 with: 'How to build a Rails app'
      fill_in 'Date',                  with: '10-16-2013'
      fill_in 'Time',                  with: '12:45 PM'
      select 'Technology',             from: 'program_category_id'
      select 'admin@kboo.org',         from: 'program_hosts_attributes_0_user_id'
      click_button 'Submit'
      page.should have_content 'Date'
    end
  end

  describe 'edit page' do
    it 'should update a program' do
      program = FactoryGirl.create(:program)
      visit edit_program_path(program.id)
      # save_and_open_page
      # ADD HOST
      # UPDATE HOST
      # SHOW NEW HOST
    end
  end
end