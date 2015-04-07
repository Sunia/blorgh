# Blorgh Generator needs the parameter to pass for creating the files.

class BlorghGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

# Copy the helper file to the application.
  def copy_helper_file
    # copy_file "helper.rb", "app/helpers/#{file_name}_helper.rb"

    create_file "app/helpers/blorgh_helper.rb", 

<<-FILE

module BlorghHelper

  def #{plural_name.singularize}_signed_in?
    warden.authenticate?(scope: mapping)
  end

  def current_#{plural_name.singularize}
  end

  def authenticate_#{plural_name.singularize}
  end

end
FILE

  end

end