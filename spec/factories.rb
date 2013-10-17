FactoryGirl.define do

  factory :program do
    title     'Build a Rails app'
    date      Date.today.to_s[0..9]
    time      Time.now.to_s[11..18]
    category  'Computer Science'
  end 

  # factory :episode do
  #   title                   'Fighting Bears'
  #   short_description       'Fuck up a bear'
  #   long_description        '*book about fucking up a bear*'
  #   audio_promo             'LINK DAT AUDIO'
  #   category                'pants'
  #   program_id              1
  # end 

  factory :episode_audio do
    episode_id  36833
    fid         35652
    filename    'kboo_episode.1.120731.0300.mp3'
    filepath    'sites/default/files/episode_audio'
    archive     1
    starttime   1343728740
    endtime     1343746860
    created     1343721652
    updated     1345534790
    status       0
  end

end