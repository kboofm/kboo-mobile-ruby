desc 'Fetch "On Air" programs'
task :fetch_on_air_programs => :environment do
  OnAirNext.instance.fetch
  OnAirNow.instance.fetch
end
