desc 'Fetch schedule'

task :schedule => :environment do
  ProgramHighlights.instance.fetch
end
