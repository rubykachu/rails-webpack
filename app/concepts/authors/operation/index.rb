module Authors::Operation
  class Index < Trailblazer::Operation
    step :load_authors!

    def load_authors!(options, params:, **)
      options[:authors] = Author.order_age
    end
  end
end
