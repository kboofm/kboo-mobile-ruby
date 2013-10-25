require 'spec_helper'

describe 'home page' do
  it 'should show the program title that will be ON AIR NEXT', :vcr do
    OnAirNext.instance.fetch
    visit root_path
    expect(page).to have_content 'The Thom Hartmann Program'
  end
end
