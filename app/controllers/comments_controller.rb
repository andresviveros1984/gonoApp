class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
  end

  def create 
    @comment = Comment.new(comments_params)
    if @comment.save
      flash.alert = 'comment added'
      redirect_to comments_new_path
    else
      render 'new'
    end
  end


  private

  def comments_params
    params.require(:comment).permit(:comment)
  end
end