class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    # @tweets = Tweet.where(user_id: current_user.id).page(params[:page]).per(3).order("created_at desc")
    @tweets = current_user.tweets.page(params[:page]).per(3).order("created_at desc")
  end

end
