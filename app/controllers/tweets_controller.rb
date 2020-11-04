class TweetsController < ApplicationController
  def index
    @user = User.new
  end
end
