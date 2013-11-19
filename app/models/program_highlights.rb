require 'singleton'
require 'open-uri'

class ProgramHighlights < ActiveRecord::Base
  serialize :highlights, Array
  self.table_name = 'program_highlights'
  include ActiveRecord::Singleton
  attr_accessor :titles, :urls

  def fetch
    url = "http://www.kboo.fm"
    doc = Nokogiri::HTML(open(url))
    highlights = []
    program_title = doc.css(".title a")
    program_title.each do |program|
      highlights.push({title: program['title'], url: "http://www.kboo.fm" + program['href'] } )
    end
    self.update(:highlights => highlights)
  end
end
