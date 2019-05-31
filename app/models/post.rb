class Post < ApplicationRecord
  belongs_to :author

  scope :publish_date, -> { order(:published_at) }
end
