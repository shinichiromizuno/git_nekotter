class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end
  
  def new
  end
  
  def create
    Tweet.create(tweet_params)
  end
  
  def edit
    @tweet = Tweet.find(params[:id])
  end
  
  def tweet_params
    params.permit(:text)
  end
end
