describe 'Episodes pages' do
  subject { page }

  describe 'list episodes' do
    it 'should display a recent episode' do
      FactoryGirl.create(:episode)  
      visit root_path
      page.should have_content 'jenka'
    end
  end
end