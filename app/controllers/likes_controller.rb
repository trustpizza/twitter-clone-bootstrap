class LikesController < ApplicationController
  def new
    @like = Like.new
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @like = @tweet.likes.create(like_params)
    
    
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @like = @tweet.likes.find_by(like_params)
    
    @like.destroy
  end

  private

  def like_params
    params.require(:like).permit(:user_id, :tweet_id)
  end
end
