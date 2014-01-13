require 'spec_helper'

describe ProgramSchedules do
  it 'should save the program Schedule to the database', do
    ProgramSchedules.instance.fetch
    expect(ProgramSchedules.instance.programs).to be_an_instance_of Array
  end
end
