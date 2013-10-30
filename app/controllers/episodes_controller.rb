class EpisodesController < ApplicationController
  before_filter :restrict_access, :unless => :format_html?
  authorize_resource :except => [:show, :index], :unless => :format_json?
  
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
    respond_to do |format|
      format.html do
        @episode = Episode.new(episode_params)
        if episode.save
          flash[:success] = "Episode saved"
          redirect_to @episode
        else
          render 'new'
        end    
      end
      format.json do
        @episode = Episode.new(episode_params)
        if @episode.save(:validate => false)
          render :json => @episode, :status => :created
        else
          render :json => @episode.errors, :status => 400 
        end 
      end
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
