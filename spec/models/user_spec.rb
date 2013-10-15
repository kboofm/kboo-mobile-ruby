require 'spec_helper'

describe User do
  it { should have_many :hosts }
  it { should have_many(:programs).through :hosts }
  it "Should set the default role to listener after creation" do
    user = User.create(:email => 'abc@abc.com', :password => '12345678', :password_confirmation => '12345678' )
    user.role.should eq 'listener'
  end

  it "Should check to if user is an admin" do
    user = User.create(:email => 'abc@abc.com', :password => '12345678', :password_confirmation => '12345678', :role => 'admin' )
    user.admin?.should eq true
  end      
end
