class Post < ApplicationRecord
  belongs_to :author
  has_many :tags

  scope :order_published_at, -> { order(:published_at) }
end
