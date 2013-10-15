class EpisodeAudioController < ApplicationController
  def show
    @episode_audios = EpisodeAudio.all
  end

end
