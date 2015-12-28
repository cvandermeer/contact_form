$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "contact_form/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "contact_form"
  s.version     = ContactForm::VERSION
  s.authors     = ["Chris van der Meer"]
  s.email       = ["cvandermeer@live.nl"]
  s.homepage    = "ikbeninwoner.nl"
  s.summary     = "Summary of ContactForm."
  s.description = "Description of ContactForm."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.0"

  s.add_development_dependency "sqlite3"
end
