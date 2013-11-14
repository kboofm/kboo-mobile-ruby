require 'spec_helper'

describe 'home page' do
  it 'should show the program title that will be ON AIR NOW', :vcr do
    OnAirNow.instance.fetch
    visit root_path
    expect(page).to have_content 'Between the Covers'
  end
end
