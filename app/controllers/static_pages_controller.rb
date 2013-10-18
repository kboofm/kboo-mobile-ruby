class StaticPagesController < ApplicationController
  def home
    @episodes = Episode.all
  end
end
