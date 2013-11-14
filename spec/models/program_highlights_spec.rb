require 'spec_helper'

describe ProgramHighlights do
  it 'should save the program highlights to the database', :vcr do
    ProgramHighlights.instance.fetch
    expect(ProgramHighlights.instance.program_title).to eq 'Between the Covers'
  end
end
