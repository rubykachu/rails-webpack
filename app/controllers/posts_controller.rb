class PostsController < ApplicationController
  def new
    run Posts::Operation::New
  end

  def create
    run Posts::Operation::Create do |result|
      return redirect_to authors_path, notice: 'Success'
    end

    render :new
  end
end
