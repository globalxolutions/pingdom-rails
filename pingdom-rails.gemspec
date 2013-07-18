# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pingdom/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "pingdom-rails"
  spec.version       = Pingdom::Rails::VERSION
  spec.authors       = ["Ariel De La Rosa"]
  spec.email         = ["ariel@globalxolutions.com"]
  spec.description   = %q{Simple cli to }
  spec.summary       = %q{Ruby interface to the Pingdom API.}
  spec.homepage      = "https://github.com/globalxolutions/pingdom-rails"
  spec.license       = "MIT"
  
  spec.add_development_dependency "rspec"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
