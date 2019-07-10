module Posts::Contract
  class Create < Reform::Form
    property :subject
    property :content
    property :published_at

    validates :subject, :content, presence: true
    validates :subject, length: { maximum: 255 }
    validates :published_at, timeliness: { type: :date }, allow_blank: true

    collection :tags,
      form: Tags::Contract::Create,
      skip_if: -> (options) { options[:fragment][:name].blank? && options[:fragment][:id].blank? },
      prepopulator: ->(*) { self.tags << Tag.new },
      populator: -> (fragment:, **) do
        item = tags.find { |tag| tag.id == fragment['id'].to_i }
        if fragment[:_delete] && fragment['id']
          # Trick: The first destroy record and after that delete item in `tags`
          tags.delete(item)
          # item.model.destroy
          return skip!
        end
        item ? item : tags.append(Tag.new)
      end
  end
end
