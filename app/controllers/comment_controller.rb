class CommentController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource param_method: :comment_parameters
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(text: comment_parameters[:text], user_id: current_user.id, post_id: @post.id)

    respond_to do |format|
      format.html do
        if @comment.save
          redirect_to user_post_path(@post.user.id, @post.id), notice: 'Comment created successfully'
        else
          redirect_to user_post_path(@post.user.id, @post.id), alert: 'An error occurred, please try again!'
        end
      end
    end
  end

  private

  def comment_parameters
    params.require(:comment).permit(:text)
  end

end
