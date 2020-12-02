module Authors::Operation
  class Update < Trailblazer::Operation
    step Model( Author, :find_by )
    step Contract::Build( constant: Authors::Contract::Create )
    step Contract::Validate( key: :author )
    step Contract::Persist()
  end
end
