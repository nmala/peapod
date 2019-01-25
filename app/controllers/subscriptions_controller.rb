class SubscriptionsController < ApplicationController
  def new
    @subscription = Subscription.new
  end

  def create
    # byebug
    @subscription = Subscription.create(user_id: current_user.id, podcast_id: params[:podcast_id])
    if @subscription.valid?
      flash[:success] = "Subscribed to #{@subscription.podcast.name}"
    else
      flash[:errors] = @subscription.errors.full_messages
    end
    redirect_to podcasts_path
  end

  def destroy
    @subscription = Subscription.find(params[:id])
    @subscription.destroy
    redirect_to user_path(current_user)
  end

  private

  def sub_params
    params.require(:subscription).permit(:user_id, :podcast_id)
  end
end
