class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.all
  end

  def show
  
    @podcast = Podcast.find(params[:id])
    @subpodcast = Podcast.new
    @subscription = Subscription.new
  end
end
