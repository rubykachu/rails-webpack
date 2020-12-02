module Posts::Operation::FormatParams
  def processing_params!(options, params:, **)
    tag_names = params[:post][:tags_attributes]['0']['name'].split(/, |, | , /)
    tag_names.each_with_index do |name, index|
      params[:post][:tags_attributes][index.to_s] = { name: name }
    end
  end
end
