class TweetsController < ApplicationController
  def
    @tweets = Tweet.all
  end
end
