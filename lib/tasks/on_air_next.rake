desc "Feth 'On Air Next' programs"
task :fetch_on_air_next_programs => :environment do
  OnAirNext.instance.fetch
end

