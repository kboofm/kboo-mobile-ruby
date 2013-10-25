class EpisodesController < ApplicationController
  before_filter :restrict_access, :except => [:index, :show]
  def index
    @episodes = Episode.limit(20)
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
      respond_to do |format|
        format.html do
          flash[:success] = "Episode saved"
          redirect_to @episode
        end
        format.json do
          render :json => @episode, :status => :created
        end
      end  
    else
      flash[:alert].now = 'Invalid entry'
      redirect_to 'new'
    end
  end

  def edit     
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
    params.require(:episode).permit(:title, :short_description, :long_description, :audio_url, :date, :time, :program_id, :image)
  end

  def restrict_access
    authenticate_or_request_with_http_token do |token, options|
      ApiKey.instance.authenticate_with(token)
    end
  end
end
