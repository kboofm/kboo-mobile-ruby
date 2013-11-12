require 'spec_helper'

describe Program do
  it { should validate_presence_of :title}
  it { should validate_presence_of :date }
  it { should validate_presence_of :time }
  it { should validate_presence_of :category_id }
  it { should respond_to :title }
  it { should respond_to :date }
  it { should respond_to :time }
  it { should respond_to :category }  
  it { should have_many  :hosts }
  it { should have_many(:users).through :hosts }
  it { should belong_to :category }
  it { should accept_nested_attributes_for :hosts }
end
