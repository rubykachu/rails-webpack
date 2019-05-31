class AuthorsController < ApplicationController
  def index
    run Authors::Operation::Index
  end
end
