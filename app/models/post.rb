class Post < ApplicationRecord
  scope :publish_date, -> { order(:published_at) }
end
