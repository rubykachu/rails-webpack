class Author < ApplicationRecord
  has_many :posts, dependent: :destroy

  scope :order_age, -> { order(:age) }
end
