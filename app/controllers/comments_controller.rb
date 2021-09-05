class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/tweets/#{comment.tweet.id}"
  end

  private
  def coment_paramas
    params.require(:comments).permit(:text).marge(user_id: current_user.id, tweet_id: [params(:tweet_id)])
end
