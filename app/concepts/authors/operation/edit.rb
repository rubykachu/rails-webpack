module Authors::Operation
  class Edit < Trailblazer::Operation
    step Model( Author, :find_by )
    step Contract::Build( constant: Authors::Contract::Create )
  end
end
