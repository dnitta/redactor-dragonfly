$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "redactor_dragonfly/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "redactor-dragonfly"
  s.version     = RedactorDragonfly::VERSION
  s.authors     = ["Daisuke Nitta"]
  s.email       = ["dnitta@mail.com"]
  s.homepage    = ""
  s.summary     = "Summary of RedactorDragonfly."
  s.description = "Description of RedactorDragonfly."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "dragonfly"
end
