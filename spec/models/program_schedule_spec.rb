require 'spec_helper'

describe ProgramSchedule do
  it 'should save the program Schedule to the database', :vcr do
    ProgramSchedule.instance.fetch
    expect(ProgramSchedule.instance.schedule).to be_an_instance_of Array
  end
end
