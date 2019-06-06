module Posts::Operation
  class Edit < Trailblazer::Operation
    include AuthorConcern

    step Model( Post, :find_by )
    step Contract::Build( constant: Posts::Contract::Create )
    step :find_author!
  end
end
