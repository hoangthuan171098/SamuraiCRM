$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samurai/contacts/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "samurai_contacts"
  spec.version     = Samurai::Contacts::VERSION
  spec.authors     = ["Hoang Thuan"]
  spec.email       = ["hoangthuan171098@gmail.com"]
  spec.homepage    = "http://samurails.com"
  spec.summary     = "Contact feature for SamuraiCRM."
  spec.description = "Contact feature for SamuraiCRM."

  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  spec.add_dependency "rails", '~> 5.1.7'
  spec.add_dependency "samurai_core"
  spec.add_dependency "deface", '~> 1.0.1'

  spec.add_development_dependency "postgresql"

end
