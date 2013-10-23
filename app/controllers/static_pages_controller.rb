class StaticPagesController < ApplicationController
  def home
    @episodes = Episode.all
    @on_air_next = OnAirNext.instance
  end
end
