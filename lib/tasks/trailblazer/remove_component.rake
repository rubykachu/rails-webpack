namespace :trailblazer do
  # Remove components
  # rails trailblazer:rm <component>
  task rm: :environment do
    ARGV.each { |a| task a.to_sym do ; end }

    # abort('Error Syntax: rails trailblazer:rm_component component_name')
    @is_remove = false
    remove_controller
    remove_concepts
    remove_views
    remove_components
    puts "Nothing changes" unless @is_remove
  end

  def remove_controller
    return unless File.exist? file_controller
    @is_remove = true
    puts "remove #{file_controller}"
    FileUtils.rm_rf(file_controller)
  end

  def remove_concepts
    return unless File.exist? folder_concepts
    @is_remove = true
    puts "remove #{folder_concepts}"
    FileUtils.rm_rf(folder_concepts)
  end

  def remove_views
    return unless File.exist? folder_views
    @is_remove = true
    puts "remove #{folder_views}"
    FileUtils.rm_rf(folder_views)
  end

  def remove_components
    return unless File.exist? folder_components
    @is_remove = true
    puts "remove #{folder_components}"
    FileUtils.rm_rf(folder_components)
  end

  def file_controller
    Rails.root.join('app', 'controllers', "#{component}_controller.rb" ).to_path
  end

  def folder_concepts
    Rails.root.join('app', 'concepts', component).to_path
  end

  def folder_views
    Rails.root.join('app', 'views', component).to_path
  end

  def folder_components
    Rails.root.join('frontend', 'components', component).to_path
  end

  def component
    ARGV.last
  end
end
