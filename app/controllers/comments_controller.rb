class CommentsController < ApplicationController
  def index

  end

  def new
    @comments = Comment.all
  end

  def test

  end

end