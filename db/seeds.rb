# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.create(email: 'admin@kboo.org', password: '12345678', password_confirmation: '12345678', role: 'admin')

categories = %w[Technology Politics Arts Books Music News]

categories.each do |category|
  Category.create(:name => category)
end  

programs = Program.create(:title => "Classical Music", :category_id => 2, :description => "Lost symphonies of Mozart", :date => Date.today, :time => Time.now)
