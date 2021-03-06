$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "no_cms/admin/carrierwave/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "nocms-admin-carrierwave"
  s.version     = NoCms::Admin::Carrierwave::VERSION
  s.authors     = ["Simplelogica"]
  s.email       = ["gems@simplelogica.net"]
  s.homepage    = "https://github.com/simplelogica/nocms-admin-carrierwave"
  s.summary     = "Gem with custom back for nocms-carrierwave gem"
  s.description = "Gem with custom back for nocms-carrierwave gem"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.0", ">= 4.0.4"
  s.add_dependency "nocms-carrierwave", '~> 0.0', '>= 0.0.1'
  s.add_dependency "nocms-admin", '~> 0.0', '>= 0.0.1'

  s.add_development_dependency "sqlite3"
end
