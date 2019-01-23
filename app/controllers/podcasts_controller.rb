class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.all
    @subscription = Subscription.new
  end

  def show
    @podcast = Podcast.find(params[:id])
    @subscription = Subscription.new
  end
end
