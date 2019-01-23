class EpisodesController < ApplicationController
  before_action :require_login

  def show
    @episode = Episode.find(params[:id])
  end
end
