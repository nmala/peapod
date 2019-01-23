class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    # byebug
    @subscription = Subscription.create(user_id: current_user.id, podcast_id: params[:podcast_id])
    flash[:success] = "Subscribed to #{@subscription.podcast.name}"
    redirect_to user_path(current_user)
  end

  private

  def sub_params
    params.require(:subscription).permit(:user_id, :podcast_id)
  end
end
