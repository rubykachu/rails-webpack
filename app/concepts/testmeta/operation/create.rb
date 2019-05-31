module Testmeta::Operation
  class Create < Trailblazer::Operation
    # step Model(Testmeta, :new)
    # step Contract::Build(constant: Testmeta::Contract::Create)
    # step Contract::Validate()
    # step Contract::Persist()
  end
end
