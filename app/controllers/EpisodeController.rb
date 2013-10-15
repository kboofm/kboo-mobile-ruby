class EpisodeController < ApplicationController
  
  def new
    @episode = Episode.new
  end

  def create
    if @episode.save
      flash[:success]
      redirect_to episodes_path
    else
      if errors.any?
        flash[:error] 
      end
    end
  end

  def edit
    #edit 
  end

  def destroy
    if @episode.destroy
      flash[:success]
    else
      flash[:error]
  end

  def update
    #update
  end

  def index
    @episodes = Episode.all
  end

end
