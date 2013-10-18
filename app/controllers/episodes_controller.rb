class EpisodesController < ApplicationController
  
  def index
    @episodes = Episode.all
  end

  def new
    @episode = Episode.new
  end

  def create
    @episode = Episode.new(episode_params)
    if @episode.save
      format.html do
        flash[:success] = "Episode saved"
        redirect_to @episode
      end
      format.json do
        render :json => @episode
      end
    else
      format.html do
        flash[:alert] = "Episode not saved"
        render 'new'
      end
      format.json do
        render :json => @episode.errors
      end
    end
  end


  def show
    @episode = Episode.find(params[:id])
  end

  def edit
     
  end

  def update
    #update
  end

  def destroy
    @episode = Episode.find(params[:id])
    if @episode.destroy
      flash[:success]
      redirect_to programs_path
    else
      flash[:error]
      redirect_to programs_path
    end
  end

  private

  def episode_params
    params.require(:episode).permit(:title, :category, :short_description, :host, :url, :long_description, :audio_promo, :image)
  end

end
