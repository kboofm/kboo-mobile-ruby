require 'spec_helper'

describe 'Episodes pages' do

  describe 'list episodes' do
    it 'should display a recent episode' do
      episode = FactoryGirl.create(:episode)
      visit root_path
      page.should have_content episode.title
    end

    it 'lets you create a program with valid info'

    it 'gives you an error if you try to create a program with invalid info'

    it 'lets you edit a program'

    it 'lets you delete a program'
  end
end
