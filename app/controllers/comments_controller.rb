class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params[:comment])
    @comment.save
    # redirect_to comments_path
    redirect_to @comment.post
  end

  def edit
  end

  def update
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end

  def destroy
  end
end
