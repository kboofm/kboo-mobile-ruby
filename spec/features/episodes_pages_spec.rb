require 'spec_helper'

describe 'Episodes pages' do

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
  
  describe 'edit' do
    it 'lets you update an episode' do
      episode = FactoryGirl.create(:episode)
      login_as(FactoryGirl.create(:admin))
      visit edit_episode_path(episode.id)
      fill_in 'Title', with: 'A brand new title'
      click_button 'Submit'
      page.should have_content 'A brand new title'
    end

    it 'lets you delete an episode' do
      episode = FactoryGirl.create(:episode)
      login_as(FactoryGirl.create(:admin))
      visit episode_path(episode.id)
      click_link 'Delete'
      page.should_not have_content episode.title
    end
  end
end
