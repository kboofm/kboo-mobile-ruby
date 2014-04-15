desc 'Fetch schedule'

task :schedule => :environment do
  ProgramSchedules.instance.fetch
end
