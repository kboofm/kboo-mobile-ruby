require 'singleton'
require 'open-uri'

class OnAirNow < ActiveRecord::Base

  self.table_name = 'on_air_nows'
  include ActiveRecord::Singleton

  def fetch
    url = "http://kboo.fm/"
    doc = Nokogiri::HTML(open(url))
    on_air_now_program = doc.at_css(".program a").text
    self.update(:program_title => "#{on_air_now_program}")
  end
end
