require 'spec_helper'

describe Program do
  it { should respond_to :title }
  it { should respond_to :date }
  it { should respond_to :time }
  it { should respond_to :category }  
  it { should have_many  :hosts }
  it { should have_many(:users).through :hosts }
  it { should belong_to :category }
<<<<<<< HEAD
  it { should accept_nested_attributes_for :hosts }
=======
>>>>>>> 2aa2623... Finish CRUD program/categories/host
end
