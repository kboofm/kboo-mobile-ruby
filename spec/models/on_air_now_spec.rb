require 'spec_helper'

describe OnAirNow do
  it 'should save the current on air episode to the database', :vcr do
    OnAirNow.instance.fetch
    expect(OnAirNow.instance.program_title).to eq 'Between the Covers'
  end
end
