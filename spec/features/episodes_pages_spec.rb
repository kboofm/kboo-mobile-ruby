require 'spec_helper'

describe 'Episodes pages' do

  describe 'index' do
    it 'should display a recent episode' do
      episode = FactoryGirl.create(:episode)
      visit root_path
      page.should have_content episode.title
    end
  end

  describe 'new' do
    it 'lets you create a program with valid info' do
      episode = FactoryGirl.build(:episode)
      login_as(FactoryGirl.create(:admin))
      visit new_episode_path
      select  episode.program.title,  from: 'episode_program_id'
      fill_in 'Title',                with: episode.title
      fill_in 'Short description',    with: episode.short_description
      fill_in 'Long description',     with: episode.long_description
      click_button 'Submit'
      page.should have_content episode.title
    end

    it 'gives an error if you try to create an episode invalid info' do
      episode = FactoryGirl.build(:episode)
      login_as(FactoryGirl.create(:admin))
      visit new_episode_path
      click_button 'Submit'
      page.should have_content 'can\'t be blank'
    end
  end
  


    # it 'lets you delete a program'

end
