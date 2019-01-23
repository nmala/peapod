class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.all
    @subscription = Subscription.new
  end

  def show
    @podcast = Podcast.find(params[:id])
    @subscription = Subscription.new
    @unsub = Subscription.find_by(podcast_id: params[:id])
  end
end
