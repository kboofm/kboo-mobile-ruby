require 'spec_helper'

describe ProgramSchedules do
  it 'should save the program Schedule to the database', :vcr do
    ProgramSchedules.instance.fetch
    expect(ProgramSchedules.instance[:programs].first[:title]).to eq 'Pandæmonium'
  end
end
