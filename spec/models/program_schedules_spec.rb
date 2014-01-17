require 'spec_helper'

describe ProgramSchedules do
  
  it 'should save the program titles to the database', :vcr do
    ProgramSchedules.instance.fetch
    expect(ProgramSchedules.instance[:programs].first[:title]).to eq 'Pandæmonium'
  end

  it 'should save the program times to the database', :vcr do
    ProgramSchedules.instance.fetch
    expect(ProgramSchedules.instance[:programs].first[:time]).to eq '12:00am - 3:00am'
  end

end
