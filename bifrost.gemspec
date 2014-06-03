$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bifrost/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bifrost-common"
  s.version     = Bifrost::VERSION
  s.authors     = ["Ronan McHugh"]
  s.email       = ["romc@kb.dk"]
  s.homepage    = "http://www.kb.dk"
  s.summary     = "Wrapper for common Bifrost functionality and styling"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.5"

  s.add_development_dependency "sqlite3"
end
