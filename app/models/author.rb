class Author < ApplicationRecord
  scope :order_age, -> { order(:age) }
end
