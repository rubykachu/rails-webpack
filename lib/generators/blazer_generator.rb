class BlazerGenerator < Rails::Generators::Base
  argument :component_name, required: true, desc: "rails g blazer module_name"

  def create_controller_file
    create_file "#{controller_path}/#{component_name}_controller.rb", <<-FILE
class #{const_name}Controller < ApplicationController
  def create
  end
end
    FILE
  end

  def create_contract_file
    create_file "#{concepts_path}/contract/create.rb", <<-FILE
module #{const_name}::Contract
  class Create < Reform::Form
    # property :name
    # validates :name, presence: true
  end
end
    FILE
  end

  def create_operation_file
    create_file "#{concepts_path}/operation/create.rb", <<-FILE
module #{const_name}::Operation
  class Create < Trailblazer::Operation
    # step Model(#{const_name}, :new)
    # step Contract::Build(constant: #{const_name}::Contract::Create)
    # step Contract::Validate(key: :#{component_name.parameterize.underscore})
    # step Contract::Persist()
  end
end
    FILE
  end

  def create_view_file
    create_file "#{view_path}/create.html.slim"
  end

  def create_partial_file
    create_file "#{component_path}/_#{component_name}.html.slim"
  end

  def create_css_file
    create_file "#{component_path}/#{component_name}.css"
  end

  def create_js_file
    create_file "#{component_path}/#{component_name}.js" do
      # require component's CSS inside JS automatically
      "import \"./#{component_name}.css\";\n"
    end
  end

  protected

  def concepts_path
    "app/concepts/#{component_name}"
  end

  def controller_path
    'app/controllers'
  end

  def view_path
    "app/views/#{component_name}"
  end

  def const_name
    component_name.capitalize
  end

  def component_path
    "frontend/components/#{component_name}"
  end
end
