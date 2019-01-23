class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.all
  end

  def show
    byebug
    @podcast = Podcast.find(params[:id])
  end
end
