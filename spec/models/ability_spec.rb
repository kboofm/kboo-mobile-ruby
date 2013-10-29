require 'spec_helper'
require "cancan/matchers"

describe Ability do
  it "lets users read everything" do
    user = User.create(:email => 'test@test.com', :password => 'password', :password_confirmation => 'password')
    ability = Ability.new(user)
    ability.should be_able_to(:read, user)
  end

  it "only lets admins make other users staff" do
    admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
    ability = Ability.new(admin)
    user = User.new(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
    ability.should be_able_to(:create, user)
  end

  it "staff cannot create other users except contributors" do
    staff = User.create(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
    ability = Ability.new(staff)
    user = User.new(:email => 'listener@test.com', :password => 'password', :password_confirmation => 'password')
    ability.should_not be_able_to(:create, user)
  end

  it "staff can create users contributors" do
    staff = User.create(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
    ability = Ability.new(staff)
    user = User.new(:email => 'contributor@test.com', :password => 'password', :password_confirmation => 'password', :role => 'contributor')
    ability.should be_able_to(:create, user)
  end

  it "allows an admin to create other admins" do
    admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
    ability = Ability.new(admin)
    user = User.new(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
    ability.should be_able_to(:create, admin)
  end

  # NEEDS MORE TESTING
  # it "lets hosts edit their own programs" do
  #   user = FactoryGirl.create(:user)
  #   program = FactoryGirl.create(:program)
  #   Host.new(program_id: program.id, user_id: user.id)
  #   ability = Ability.new(user)
  #   ability.should be_able_to(:update, program)
  # end

  # it "doesn't let hosts edit somebody else's programs" do

  # end

  it "lets staff edit anybody's programs" do
    staff = User.create(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
    ability = Ability.new(staff)
    program = Program.new(:title => 'This is a test program', :description => 'A program to test functionality')
    ability.should be_able_to(:edit, program)
  end

  it "lets admins edit anybody's programs" do
    admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
    ability = Ability.new(admin)
    program = Program.new(:title => 'This is a test program', :description => 'A program to test functionality')
    ability.should be_able_to(:edit, program)
  end
end
