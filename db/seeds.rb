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

program = Program.create(
	title: "title title",
	category_id: Category.first.id,
	description: "Lorem ipsum description",
	time: Time.current.strftime('%H:%M'),
	date: Date.today
	)  

episode = Episode.create(
  title: 'test title',
  short_description: 'lorem ipsum',
  long_description: 'lorem ipsum and more',
  host: "Jenka",
  audio_url: "http://www.kboo.fm/sites/default/files/episode_audio/kboo_episode.2.131025.0800.2709.mp3",
  program_id: program.id
  ) 


