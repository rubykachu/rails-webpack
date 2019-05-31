module Posts::Operation
  class New < Trailblazer::Operation
    include AuthorConcern

    step Model( Post, :new )
    step :find_author!
  end
end
