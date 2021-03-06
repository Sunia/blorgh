$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blorgh/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blorgh"
  s.version     = Blorgh::VERSION
  s.authors     = ["Sunia kalra"]
  s.email       = ["skalra17@yahoo.in"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Blorgh."
  s.description = "TODO: Description of Blorgh."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  # twitter bootstrap css & javascript toolkit
   
  s.add_dependency 'twitter-bootswatch-rails', '~> 3.3.2'

  # twitter bootstrap helpers gem, e.g., alerts etc...
  s.add_dependency 'twitter-bootswatch-rails-helpers'

  # to use Less.
  s.add_dependency 'therubyracer'  
  s.add_dependency 'less-rails'

  # For Jquery
  s.add_dependency 'jquery-rails'

  # Gems using while developing the plugin
  s.add_development_dependency "sqlite3"
end

