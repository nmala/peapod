class GenresController < ApplicationController

  def index
    @genres = Genre.all
    @subscription = Subscription.new
    @unsub = Subscription.find_by(podcast_id: params[:id])
  end

  def show
    @genre = Genre.find(params[:id])
    @subscription = Subscription.new
    @unsub = Subscription.find_by(podcast_id: params[:id])
  end
end
