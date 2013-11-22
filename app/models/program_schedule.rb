require 'singleton'
require 'open-uri'

class ProgramSchedule < ActiveRecord::Base

  self.table_name = 'schdules'
  include ActiveRecord::Singleton
  attr_reader :titles, :times, :days

  def fetch
    titles = []
    urls = []
    timeslots = []
    url = "http://www.kboo.fm/schedule"
    doc = Nokogiri::HTML(open(url))
    program_title = doc.css(".schedule_display_day_program a")
    program_time = doc.css(".schedule_display_day_time")

    program_time.each do |timeslot|
      timeslots.push(timeslot)
    end
    #refactor
    program_title.each do |link|
      titles.push(link['title'])
      urls.push(link.first[1]) #weird nokogiri object, this is the easiest way to access the URL pattern ive found

    end

    titles.each do |title|
      self.update(:program_title => title)
    end

    urls.each do |url|
      self.update(:url => "http://www.kboo.fm/" + url)
    end

    timeslots.each do |timeslot|
      self.update(:timeslot => timeslot)
    end
  end
end