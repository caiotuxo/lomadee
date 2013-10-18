$:.push File.expand_path("../lib", __FILE__)
require "lomadee/version"

Gem::Specification.new do |s|
  s.name        = "lomadee"
  s.version     = Lomadee::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Bruno A. da Costa"]
  s.email       = ["brunoadacosta@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/lomadee"
  s.summary     = "A lightweight Ruby wrapper for Buscapé API"
  s.description = s.summary
  s.license       = 'MIT'

  s.files         = `git ls-files`.split($\)
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_dependency "httparty"

  s.add_development_dependency "awesome_print"
  s.add_development_dependency "pry"
  s.add_development_dependency "rspec"
end