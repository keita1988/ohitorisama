class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @name = user.nickname
  end
end
