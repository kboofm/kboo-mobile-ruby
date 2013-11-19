desc 'Fetch Schedule'
task :fetch_on_air_programs => :environment do
  Schedule.instance.fetch
end
