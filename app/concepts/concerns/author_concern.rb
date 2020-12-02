module AuthorConcern
  def find_author!(options, params:, **)
    options[:author] = Author.find(params[:author_id])
  end

  def reload_authors!(options, params:, **)
    options[:authors] = Author.order_age
  end
end
