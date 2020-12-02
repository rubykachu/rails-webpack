module Authors::Operation
  class New < Trailblazer::Operation
    step Model( Author, :new )
    step Contract::Build( constant: Authors::Contract::Create )
  end
end
