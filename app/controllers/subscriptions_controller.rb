class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    # byebug
    @subscription = Subscription.new

    @subscription.user_id = current_user.id
    @subscription.podcast_id = params[:podcast_id]

    @subscription.save
  end

  private

  def sub_params
    params.require(:subscription).permit(:user_id, :podcast_id)
  end
end
