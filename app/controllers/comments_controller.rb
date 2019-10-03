class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    
  end

  def new
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.build(comment_params)
    if @comment.save
      redirect_to @post
    else
      render :new
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :user_id)
    end
end
