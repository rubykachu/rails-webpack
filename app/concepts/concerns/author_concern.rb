module AuthorConcern
  def find_author!(options, params:, **)
    options[:author] = Author.find(params[:author_id])
  end
end
