module Posts::Operation
  class New < Trailblazer::Operation
    include AuthorConcern

    step Model( Post, :new )
    step Contract::Build( constant: Posts::Contract::Create )
    step :find_author!
  end
end
