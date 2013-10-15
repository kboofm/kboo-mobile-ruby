require 'spec_helper'

describe Program do
  it { should respond_to :title }
  it { should respond_to :date }
  it { should respond_to :time }
  it { should respond_to :category }  
  it { should have_many  :hosts }
  it { should have_many(:users).through :hosts }

end
