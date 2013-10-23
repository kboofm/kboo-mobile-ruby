require 'spec_helper'

describe EpisodesController do

  context "POST create" do
    context "with valid parameters" do
      let(:valid_attributes) { { :title => 'test', 
                                 :short_description => 'short description',
                                 :long_description => 'long description',
                                 :audio_url => 'audio_url'
                              }  }
      let(:valid_parameters) { { :episode => valid_attributes, :format => :json } }
      let(:api_key) { ApiKey.instance }
      let(:http_auth) {request.env['HTTP_AUTHORIZATION'] = "Token token=#{api_key.hashed_token.to_s}"}

      it 'creates a new episode' do
        expect { post :create, http_auth, valid_parameters}.to change(Episode, :count).by(1) 
      end

      describe 'response with a valid API key' do
        before { post :create, http_auth, valid_parameters}
        it { should respond_with 201 }
      end
      
      describe 'response with a invalid API key' do
        before { post :create, "123456" , valid_parameters}
        it { should respond_with 401 }
      end
    end
  end
end