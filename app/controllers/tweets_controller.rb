class TweetsController < ApplicationController
  before_action :move_to_edit, except: [:index]

  def index
    @tweet = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @tweet = Tweet.find(params[:id])
  end


  private

  def tweet_params
    params.require(:tweet).permit(:coffee_price, :tasty, :relaxation, :under_ground, :store_name, :address, :image).merge(user_id: current_user.id)
  end

  def move_to_edit
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
