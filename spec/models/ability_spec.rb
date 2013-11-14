require 'spec_helper'
require 'cancan/matchers'

describe Ability do
  context 'as a listener' do
    it 'lets users read everything' do
      user = User.create(:email => 'test@test.com', :password => 'password', :password_confirmation => 'password')
      ability = Ability.new(user)
      ability.should be_able_to(:read, user)
    end

    it 'does not allow user who are not admins or staff to create episodes' do
      listener = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'listener')
      ability = Ability.new(listener)
      episode = Episode.new(title: 'test title',short_description: 'lorem ipsum',long_description: 'lorem ipsum and more',host: 'Jenka', audio_url: 'http://www.kboo.fm/sites/default/files/episode_audio/kboo_episode.2.131025.0800.2709.mp3') 
      ability.should_not be_able_to(:create, episode)
    end

    it 'does not allow user who are not admins or staff to create programs' do
      listener = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'listener')
      ability = Ability.new(listener)
      program = FactoryGirl.create(:program)
      ability.should_not be_able_to(:create, program)
    end
  end

  context 'as a host' do
    it 'lets hosts edit their own programs' do
      user = FactoryGirl.create(:user)
      program = FactoryGirl.create(:program)
      Host.create(program_id: program.id, user_id: user.id)
      ability = Ability.new(user)
      ability.should be_able_to(:manage, program)
    end

    it 'does not let a host edit somebody else\'s program' do
      user1 = FactoryGirl.create(:user)
      program1 = FactoryGirl.create(:program)
      Host.create(program_id: program1.id, user_id: user1.id)
      user2 = FactoryGirl.create(:user)
      program2 = FactoryGirl.create(:program)
      Host.create(program_id: program2.id, user_id: user2.id)
      ability = Ability.new(user1)
      ability.should_not be_able_to(:manage, program2)
    end  
  end

  context 'as an admin' do 
    it 'only lets admins make other users staff' do
      admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
      ability = Ability.new(admin)
      user = User.new(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
      ability.should be_able_to(:create, user)
    end
    
    it 'allows an admin to create other admins' do
      admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
      ability = Ability.new(admin)
      user = User.new(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
      ability.should be_able_to(:create, admin)
    end

    it 'lets staff edit anybody\'s programs' do
      staff = User.create(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
      ability = Ability.new(staff)
      program = Program.new(:title => 'This is a test program', :description => 'A program to test functionality')
      ability.should be_able_to(:edit, program)
    end

    it 'lets admins edit anybody\'s programs' do
      admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
      ability = Ability.new(admin)
      program = Program.new(:title => 'This is a test program', :description => 'A program to test functionality')
      ability.should be_able_to(:edit, program)
    end

    it 'lets admins create episodes' do
      admin = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'admin')
      ability = Ability.new(admin)
      episode = Episode.new(title: 'test title',short_description: 'lorem ipsum',long_description: 'lorem ipsum and more',host: 'Jenka', audio_url: 'http://www.kboo.fm/sites/default/files/episode_audio/kboo_episode.2.131025.0800.2709.mp3') 
      ability.should be_able_to(:create, episode)
    end
  end  
  
  context 'as staff' do 
    it 'staff cannot create other users except contributors' do
      staff = User.create(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
      ability = Ability.new(staff)
      user = User.new(:email => 'listener@test.com', :password => 'password', :password_confirmation => 'password')
      ability.should_not be_able_to(:create, user)
    end

    it 'staff can create users contributors' do
      staff = User.create(:email => 'staff@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
      ability = Ability.new(staff)
      user = User.new(:email => 'contributor@test.com', :password => 'password', :password_confirmation => 'password', :role => 'contributor')
      ability.should be_able_to(:create, user)
    end

    it 'lets staff manage episodes' do
      staff = User.create(:email => 'admin@test.com', :password => 'password', :password_confirmation => 'password', :role => 'staff')
      ability = Ability.new(staff)
      episode = Episode.new(title: 'test title',short_description: 'lorem ipsum',long_description: 'lorem ipsum and more',host: 'Jenka', audio_url: 'http://www.kboo.fm/sites/default/files/episode_audio/kboo_episode.2.131025.0800.2709.mp3') 
      ability.should be_able_to(:manage, episode)
    end
  end  
end
