class AuthorsController < ApplicationController
  def index
    @authors = Author.order_age
  end
end
