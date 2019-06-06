module Authors::Operation
  class Delete < Trailblazer::Operation
    step Model( Author, :find_by )
    step :delete!
    step :reload_authors

    def delete!(options, model:, **)
      model.destroy!
    end

    def reload_authors(options, **)
      options[:authors] = Author.order_age
    end
  end
end
