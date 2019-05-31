module Authors::Operation
  class Create < Trailblazer::Operation
    # step Model(Authors, :new)
    # step Contract::Build(constant: Authors::Contract::Create)
    # step Contract::Validate()
    # step Contract::Persist()
  end
end
