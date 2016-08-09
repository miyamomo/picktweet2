class TweetsController < ApplicationController

  def index
    # @tweet = Tweet.find(1)
    @tweets = Tweet.all.order("created_at DESC")
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
    # binding.pry
    # Tweet.create(name: params[:name], image: params[:image], text: params[:text])
  end

  private
  def tweet_params
    params.permit(:name, :image, :text)
  end

end
