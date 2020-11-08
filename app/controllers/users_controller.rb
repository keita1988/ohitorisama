class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.nickname
    @tweets = user.tweets
  end
end
