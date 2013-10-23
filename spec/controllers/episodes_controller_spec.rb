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

      let(:api_key) { ApiKey.create }
      

      it 'creates a new episode' do
        request.env['HTTP_AUTHORIZATION'] = "Token token=#{api_key.access_token}" 
        expect { post :create, valid_parameters}.to change(Episode, :count).by(1) 
      end

      describe 'response' do
        
        before { post :create, valid_parameters}
        it { should respond_with 201 }
      end
      
      # describe "POST 'new'" do
      #   it "should be successful" do
      #     api_key = ApiKey.create
      #     post 'new', nil
      #     response.should be_success
      #   end
      # end



    end
  end
end