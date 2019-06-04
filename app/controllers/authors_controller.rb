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

    render :new
  end
end
