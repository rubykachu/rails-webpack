module Authors::Operation
  class New < Trailblazer::Operation
    step Model( Author, :new )
  end
end
