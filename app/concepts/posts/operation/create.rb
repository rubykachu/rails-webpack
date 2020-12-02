module Posts::Operation
  class Create < Trailblazer::Operation
    include AuthorConcern
    include FormatParams

    step Model( Post, :new )
    step :assign_author!
    step :processing_params!
    step Contract::Build( constant: Posts::Contract::Create )
    step Contract::Validate( key: :post )
    step Contract::Persist()
    failure :find_author!

    def assign_author!(options, params:, **)
      options['model'].author_id = params[:author_id]
    end
  end
end
