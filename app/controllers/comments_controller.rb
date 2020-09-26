class CommentsController < ApplicationController
  def create
    @buy = Buy.find(params[:buy_id])
    @comment = @buy.comments.build(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    render :index
  end

  def destroy
    @buy = Buy.find(params[:buy_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :index
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :buy_id, :user_id)
  end
end
