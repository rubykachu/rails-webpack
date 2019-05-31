class Post < ApplicationRecord
  belongs_to :author

  scope :order_published_at, -> { order(:published_at) }
end
