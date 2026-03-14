class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create]
  def index
   if params[:search] == nil
    @tweets= Tweet.all
   elsif params[:search] == ''
    @tweets= Tweet.all
   else
    #部分検索
    @tweets = Tweet.where("name LIKE ? ",'%' + params[:search] + '%')
   end
  end
  def new
    @tweet = Tweet.new
  end
  def create
    @tweet = current_user.tweets.new(tweet_params)  # ← current_user に紐付け
    if @tweet.save
      redirect_to action: :index
    else
      render :new  # 保存失敗時にエラーを表示
    end
  end
  def show
    @tweet = Tweet.find(params[:id])
  end
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :adress, :time, :cost, :point, :image)
  end
end

