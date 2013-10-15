FactoryGirl.define do
  factory :program do
    title     'Build a Rails app'
    date      Date.today.to_s[0..9]
    time      Time.now.to_s[11..18]
    category  'Computer Science'
  end 
end