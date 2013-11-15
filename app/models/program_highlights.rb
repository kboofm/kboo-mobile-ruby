require 'singleton'
require 'open-uri'

class ProgramHighlights < ActiveRecord::Base

  self.table_name = 'program_highlights'
  include ActiveRecord::Singleton

  def fetch
    url = "http://kboo.fm/"
    doc = Nokogiri::HTML(open(url))
    binding.pry
    program_title = doc.css(".title a").text
    # program_description = doc.at_css(".field-label-inline-first").next.text
    self.update(:program_title => "#{program_title}")
    # self.update(:description => "#{program_description}")
  end
end