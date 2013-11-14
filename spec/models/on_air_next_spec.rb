require 'spec_helper'

describe OnAirNext do
  it 'should save the next on air episode to the database', :vcr do
    OnAirNext.instance.fetch
    expect(OnAirNext.instance.program_title).to eq 'Words and Pictures'
  end
end
