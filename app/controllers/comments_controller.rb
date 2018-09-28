class CommentsController < ApplicationController
  before_action :set_comment, only: [:destroy]
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to @comment.commentable
  end 
  
  def destroy
    @comment.destroy
    redirect_back fallback_location: root_url
  end
  
  private
  def set_comment
     @comment = Comment.find(params[:id])
  end
  
  def comment_params
    params.require(:comment).permit(:comment, :commentable_id, :commentable_type)
  end
end
