desc 'Fetch highlighted upcoming programs'

task :highlighted_programs => :environment do
  ProgramHighlights.instance.fetch
end
