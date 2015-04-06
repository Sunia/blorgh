# Blorgh Generator needs the parameter to pass for creating the files.

class BlorghGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

# Copy the helper file to the application.
  def copy_helper_file
    # copy_file "helper.rb", "app/helpers/#{file_name}_helper.rb"

    create_file "app/helpers/blorgh_helper.rb", 

<<-FILE

module #{class_name}Helper
  attr_reader :#{plural_name}, :#{plural_name.singularize}

  def #{plural_name.singularize}_signed_in?
    warden.authenticate?(scope: mapping)
  end

  def current_#{plural_name.singularize}
    mappings.unshift mappings.delete(favourite.to_sym) if favourite
    mappings.each do |mapping|
      current = warden.authenticate(scope: mapping)
      return current if current
    end
    nil
  end

  def authenticate_#{plural_name.singularize}
    unless #{plural_name.singularize}_signed_in?
      mappings.unshift mappings.delete(favourite.to_sym) if favourite
      mappings.each do |mapping|
        opts[:scope] = mapping
        warden.authenticate!(opts) if !devise_controller? || opts.delete(:force)
      end
    end
  end

end

FILE
  end

end