class EpisodesController < ApplicationController
  
  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      flash[:success]
      redirect_to root_path
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
  end

  def update
    #update
  end

  def index
    @episodes = Episode.all
  end

  private

  def episode_params
    params[:episode].permit(:title, :category, :short_description, :long_description, :audio_promo, :image)
  end

end
