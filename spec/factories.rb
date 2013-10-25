FactoryGirl.define do

  factory :program do
    title       'Build a Rails app'
    date        Date.today.to_s[0..9]
    time        Time.now.to_s[11..15]
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
    name       'Technology'
  end

  factory :user do
    email                 'admin@kboo.org'
    password              '12345678' 
    password_confirmation '12345678'
    role                  'admin'
  end

  factory :episode do
    title    'title test'
    short_description 'lorem ipsum'
    long_description 'morem lorem ipsum'
    host 'jenka'
    audio_url 'kboo_episode.2.131010.0930.14557.mp3'
  end  
end

