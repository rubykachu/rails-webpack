module Posts::Operation
  class Update < Trailblazer::Operation
    include AuthorConcern

    step :find_author!
    step Model( Post, :find_by )
    step Contract::Build( constant: Posts::Contract::Create )
    step Contract::Validate( key: :post )
    step Contract::Persist()
  end
end
