module Posts::Operation
  class Create < Trailblazer::Operation
    # step Model(Posts, :new)
    # step Contract::Build(constant: Posts::Contract::Create)
    # step Contract::Validate()
    # step Contract::Persist()
  end
end
