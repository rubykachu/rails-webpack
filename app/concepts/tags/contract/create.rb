module Tags::Contract
  class Create < Reform::Form
    property :name
    property :code

    validates :name, :code, presence: true

    def code
      self.code = name.parameterize
    end
  end
end
