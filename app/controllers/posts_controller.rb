class PostsController < ApplicationController

# new, create
# edit, show, destroy
# index


  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new
  end


  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

      if @post.save
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render action: "new"
      end
  end


  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end


  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(params[:post])
      redirect_to @post, notice: 'Post was successfully updated.'
    else
      render action: "edit"
    end
  end


  # GET /posts
  # GET /posts.json
  def index
    # @posts = Post.order('updated_at ASC')  ASC=ascending; DESC=descending
    @posts = Post.all
  end


  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end


  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end
end
