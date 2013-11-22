desc 'Fetch program schedule'

task :program_schedules => :environment do
  ProgramSchedules.instance.fetch
end
