require 'spec_helper'

describe OnAirNext do
  it { should validate_presence_of :program_title }

  it 'should save the next on air episode to the database', :vcr do
    OnAirNext.instance.fetch
    expect(OnAirNext.instance.program_title).to eq 'Recovery Zone'
  end
end