class PostsController < ApplicationController
  def index
    run Posts::Operation::Index
  end

  def new
    run Posts::Operation::New
  end

  def create
    run Posts::Operation::Create do |result|
      return redirect_to author_posts_path(params[:author_id]), notice: 'Success'
    end

    flash.now[:alert] = 'Failed'
    render :new
  end

  def show
    redirect_to edit_author_post_path(params[:author_id], params[:id])
  end

  def edit
    run Posts::Operation::Edit
  end

  def update
    run Posts::Operation::Update do |result|
      return redirect_to edit_author_post_path(params[:author_id], params[:id]), notice: 'Success'
    end

    flash.now[:alert] = 'Failed'
    render :edit
  end

  def destroy
    run Posts::Operation::Delete
  end
end
