require 'spec_helper'

describe ProgramHighlights do
  it 'should save the program highlights to the database', :vcr do
    ProgramHighlights.instance.fetch
    expect(ProgramHighlights.instance[:highlights].first[:title]).to eq"Noam Chomsky on The U.S. as a Rogue State "
  end
end
