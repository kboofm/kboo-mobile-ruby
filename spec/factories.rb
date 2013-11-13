FactoryGirl.define do
  sequence :email do |n|
    "email#{n}@factory.com"
  end  

  factory :program do
    title       'Build a Rails app'
    date        Date.today
    time        Time.now
    description 'Multi-threaded integration testing for humans'
    category
  end

  factory :program2 do
    title       'Build ember app'
    date        Date.today
    time        Time.now
    description 'manos arriba'
    category
  end    

  factory :episode_audio do
    episode_id 36833
    fid        35652
    filename   'kboo_episode.1.120731.0300.mp3'
    filepath   'sites/default/files/episode_audio'
    archive    1
    starttime  1343728740
    endtime    1343746860
    created    1343721652
    updated    1345534790
    status     0
  end

  factory :category do
    sequence(:name) { |n| "Category#{n}" }
  end

  factory :user do
    email                 
    password              '12345678' 
    password_confirmation '12345678'
    factory :admin do
      role                'admin'
    end
  end
  

 

  factory :episode do
    title    'title test'
    short_description 'lorem ipsum'
    long_description 'morem lorem ipsum'
    host 'jenka'
    audio_url 'kboo_episode.2.131010.0930.14557.mp3'
  end  
end

