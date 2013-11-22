desc 'Fetch program schedule'

task :program_schedule => :environment do
  ProgramSchedule.instance.fetch
end
