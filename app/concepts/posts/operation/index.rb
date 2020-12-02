module Posts::Operation
  class Index < Trailblazer::Operation
    include AuthorConcern
    step :load_posts!
    step :find_author!

    def load_posts!(options, params:, **)
      options[:posts] = Post.order_published_at
    end
  end
end
