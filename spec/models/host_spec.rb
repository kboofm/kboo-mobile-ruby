require 'spec_helper'

describe Host do
  it { should belong_to :user }
  it { should belong_to :program }
end
