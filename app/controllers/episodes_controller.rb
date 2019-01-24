class EpisodesController < ApplicationController
  before_action :require_logged_in

  def show
    @episode = Episode.find(params[:id])
  end
end
