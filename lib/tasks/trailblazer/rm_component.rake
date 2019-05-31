namespace :trailblazer do
  task rm_component: :environment do
    # ARGV[0] == 'trailblazer'
    # ARGV[1] == 'rm'
    # ARGV[2] == 'component_name'
    ARGV.each { |a| task a.to_sym do ; end }

    # abort('Error Syntax: rails trailblazer:rm_component component_name') unless ARGV[0] == 'trailblazer'
    remove_controller
    remove_concepts
    remove_views
    remove_components
  end

  def remove_concepts
  end

  def remove_views
  end

  def remove_components
  end

  def remove_controller
    puts "remove #{file_controller}"
    FileUtils.rm_rf(file_controller) if File.exist?(file_controller)
  end

  def file_controller
    Rails.root.join('app', 'controllers', "#{component}_controller.rb" ).to_path
  end

  def component
    ARGV.last
  end

  # create  app/controllers/testmeta_controller.rb
  # create  app/concepts/testmeta/contract/create.rb
  # create  app/concepts/testmeta/operation/create.rb
  # create  app/views/testmeta/create.html.slim
  # create  frontend/components/testmeta/_testmeta.html.slim
  # create  frontend/components/testmeta/testmeta.css
  # create  frontend/components/testmeta/testmeta.js
end
