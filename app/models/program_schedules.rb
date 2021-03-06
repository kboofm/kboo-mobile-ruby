require 'singleton'
require 'open-uri'

class ProgramSchedules < ActiveRecord::Base
  serialize :programs, Array
  self.table_name = 'program_schedules'
  include ActiveRecord::Singleton

  def fetch
    url = "http://www.kboo.fm/schedule"
    doc = Nokogiri::HTML(open(url))
    program_info = doc.css(".schedule_display_day_program a")
    times = doc.css(".schedule_display_day_time")

    programs = []
    times_of_programs = []

    program_info.each do |program|
      programs.push({title: program.children.text, url: "http://www.kboo.fm/#{program['href']}"})  
    end

    times.each do |time|
      times_of_programs.push(time.children.text)
    end

    times_of_programs.each_with_index do |time, index|
      programs[index][:times] = time
    end

    self.update(:programs => programs)
  end
end
