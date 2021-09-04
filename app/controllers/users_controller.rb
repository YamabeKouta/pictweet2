class UsersController < ApplicationController
  def show
    @tweets = current_user.tweets
    @nickname = current_user.nickname
  end
end
