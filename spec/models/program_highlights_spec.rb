require 'spec_helper'

describe ProgramHighlights do
  it 'should save the program highlights to the database', :vcr do
    ProgramHighlights.instance.fetch
    expect(ProgramHighlights.instance.highlights).to be_an_instance_of Array
  end
end
