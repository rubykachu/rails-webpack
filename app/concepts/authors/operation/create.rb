module Authors::Operation
  class Create < Trailblazer::Operation
    step Model( Author, :new )
    step Contract::Build( constant: Authors::Contract::Create )
    step Contract::Validate( key: :author )
    step Contract::Persist()
  end
end
