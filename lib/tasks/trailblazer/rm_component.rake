# Destroy component trailblazer
namespace :trailblazer do
  task rm_component: :environment do
    # ARGV[0] == 'trailblazer'
    # ARGV[1] == 'rm'
    # ARGV[2] == 'component_name'
    ARGV.each { |a| task a.to_sym do ; end }

    # abort('Error Syntax: rails trailblazer:rm_component component_name') unless ARGV[0] == 'trailblazer'
    output_confirm
    execute_remove
  end

  def execute_remove
    puts 'ok'
  end

  def remove_controller
    File.delete(file_controller) if File.exist?(file_controller)
  end

  def file_controller
    Rails.root.join('app', 'controllers', "#{component}_controller.rb" ).to_path
  end

  def component
    ARGV.last
  end

  def root
    Rails.root.to_path
  end

  def output_confirm
    puts "remove #{file_controller.from(root.size)}" if File.exist?(file_controller)
  end

  # create  app/controllers/testmeta_controller.rb
  # create  app/concepts/testmeta/contract/create.rb
  # create  app/concepts/testmeta/operation/create.rb
  # create  app/views/testmeta/create.html.slim
  # create  frontend/components/testmeta/_testmeta.html.slim
  # create  frontend/components/testmeta/testmeta.css
  # create  frontend/components/testmeta/testmeta.js
end
