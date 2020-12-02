module Authors::Contract
  class Create < Reform::Form
    property :fullname
    property :email
    property :age

    validates :fullname, :email, :age, presence: true
    validates :fullname, :email, length: { maximum: 255 }
    validates :email, email: true, unique: { case_sensitive: false }
    validates :age, numericality: { only_integer: true, greater_than: 16, less_than: 200 }
  end
end
