desc 'Fetch highlighted upcoming programs'

task :fetch_on_air_programs => :environment do
  HighlightedShows.instance.fetch
end
