require 'spec_helper'

describe ApiKey do
  it 'creates an access token' do
    unhashed_token = ApiKey.instance
    unhashed_token.access_token.length.should eq 32
  end

  it 'hashes the token with the date and time' do
    api_key = ApiKey.instance
    unhashed_token = api_key.access_token +
                     Date.today.strftime('%Y%m%d') +
                     Time.zone.now.strftime('%H%M')
    test_hashed_token = Digest::SHA1.hexdigest(unhashed_token).to_s
    api_key.hashed_token.should eq test_hashed_token
  end

  it 'doesn\'t authenticate if the wrong hashed token is passed in' do
    api_key = ApiKey.instance
    api_key.authenticate_with(api_key.access_token).should be_false
  end

  it 'authenticates if the proper hashed token is passed in' do
    api_key = ApiKey.instance
    api_key.authenticate_with(api_key.hashed_token).should be_true
  end  
end  
