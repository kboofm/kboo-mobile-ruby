require 'spec_helper'

describe 'static pages' do
  describe 'home page' do
    it 'should show the next episode' do
      visit root_path
      expect(page).to have_content 'ON AIR NEXT' 
    end
  end 
end
