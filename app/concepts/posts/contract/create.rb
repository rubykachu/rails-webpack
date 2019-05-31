module Posts::Contract
  class Create < Reform::Form
    property :subject
    property :content
    property :published_at

    validates :subject, :content, presence: true
    validates :subject, length: { maximum: 255 }
    validates :published_at, timeliness: { type: :date }, allow_blank: true
  end
end
