module Posts::Operation
  class Update < Trailblazer::Operation
    include AuthorConcern

    step :find_author!
    step Model( Post, :find_by )
    step :delete_params_if_empty!
    step Contract::Build( constant: Posts::Contract::Create )
    step Contract::Validate( key: :post )
    step Contract::Persist()

    def delete_params_if_empty!(options, params:, **)
      params[:post][:tags_attributes].keys.each do |index|
        obj_delete = params[:post][:tags_attributes][index]['name']
        params[:post][:tags_attributes][index][:_delete] = true if obj_delete.blank?
      end
    end
  end
end
