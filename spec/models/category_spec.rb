require 'spec_helper'

describe Category do
  it { should have_many :programs }
  it { should respond_to :name }
  it { should have_many :programs }
end
