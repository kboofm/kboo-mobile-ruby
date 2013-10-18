class EpisodesController < ApplicationController
  def index
    @episodes = Episode.all
  end

  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      flash[:success] = 'Episode created'
      redirect_to @episode
    else
      flash[:alert] = 'Invalid entry'
      redirect_to 'new'
    end
  end

  def edit
    @episode = Episode.find(params[:id])
  end

  def update
    @episode = Episode.find(params[:id])
    if @episode.update(episode_params)
      flash[:success] = 'Episode updated'
      redirect_to @episode
    else
      flash[:alert] = 'Invalid entry'
      render 'edit'
    end
  end

  def destroy
    Episode.find(params[:id]).destroy
    flash[:success] = 'Episode deleted'
    redirect_to episodes_path
  end

  private

  def episode_params
    params.require(:episode).permit(:title, :category, :short_description, :long_description, :audio_promo, :image)
  end

end
