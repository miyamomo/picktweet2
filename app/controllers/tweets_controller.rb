class TweetsController < ApplicationController

  def index
    # @tweet = Tweet.find(1)
    @tweets = Tweet.all
  end

  def new
  end

end
