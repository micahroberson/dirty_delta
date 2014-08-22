$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "dirty_delta/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "dirty_delta"
  s.version     = DirtyDelta::VERSION
  s.authors     = ["Micah Roberson"]
  s.email       = ["micah.roberson@gmail.com"]
  s.homepage    = "http://micahroberson.com"
  s.summary     = "Rails gem allowing models to easily access delta values on changed attributes."
  s.description = "Rails gem allowing models to easily access delta values on changed attributes."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.1"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end
