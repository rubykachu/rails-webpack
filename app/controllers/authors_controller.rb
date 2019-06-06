class AuthorsController < ApplicationController
  def index
    run Authors::Operation::Index
  end

  def new
    run Authors::Operation::New
  end

  def create
    run Authors::Operation::Create do |result|
      return redirect_to authors_path, notice: 'Success'
    end

    flash.now[:alert] = 'Failed'
    render :new
  end

  def show
    redirect_to edit_author_path(params[:id])
  end

  def edit
    run Authors::Operation::Edit
  end

  def update
    run Authors::Operation::Update do |result|
      return redirect_to edit_author_path(params[:id]), notice: 'Success'
    end

    flash.now[:alert] = 'Failed'
    render :edit
  end

  def destroy
    run Authors::Operation::Delete
  end
end
