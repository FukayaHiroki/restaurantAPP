class CommentsController < ApplicationController
  def create
    @comment = Comment.create(comment_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :content).merge(restaurant_id: params[:restaurant_id])
  end
end