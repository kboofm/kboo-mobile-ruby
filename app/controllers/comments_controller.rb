class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end
 
  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save 
      flash[:success] = 'comment created'
      redirect_to @comment
    else
      flash[:alert].now = 'Invalid entry'
      render 'new'
    end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
  end

  def destroy
    Comment.find(params[:id]).destroy
    flash[:success] = 'Comment removed'
    redirect_to current_user
  end

  private

  def comment_params
    params.require(:comment).permit(:comment_text)
  end
end