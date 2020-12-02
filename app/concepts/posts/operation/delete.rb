module Posts::Operation
  class Delete < Trailblazer::Operation
    include AuthorConcern
    step Model( Post, :find_by )
    step Contract::Build( constant: Posts::Contract::Create )
    step :delete_post!
    step :reload_posts!
    step :find_author!

    def delete_post!(options, model:, **)
      model.destroy
    end

    def reload_posts!(options, **)
      options[:posts] = Post.order_published_at
    end
  end
end
