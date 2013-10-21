require 'spec_helper'


describe EpisodesController do
  before(:each) do
    authorize "admin", "kboo"
  end  


  context "POST create" do
    context "with valid parameters" do
      let(:valid_attributes) { { :title => 'test', 
                                 :short_description => 'short description',
                                 :long_description => 'long description',
                                 :audio_promo => 'audio promo',
                                 :category => 'category',
                                 :url => 'url'
                              }  }
      let(:valid_parameters) { { :episode => valid_attributes, :format => :json } }

      it 'creates a new episode' do
        expect { post :create, valid_parameters }.to change(Episode, :count).by(1)
      end

      # describe 'response' do
      #   before { post :create, valid_parameters }

      #   it { should respond_with 201 }
      # end
      
      describe "POST 'new'" do
        it "should be successful" do
          post 'new'
          response.should be_success
        end
      end
    end
  end
end