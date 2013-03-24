# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authn/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "authn-rails"
  spec.version       = AuthN::Rails::VERSION
  spec.authors       = ["Kurtis Rainbolt-Greene"]
  spec.email         = ["me@kurtisrainboltgreene.name"]
  spec.summary       = %q{The rails integration for authn}
  spec.description   = spec.summary
  spec.homepage      = "http://krainboltgreene.github.com/authn-rails"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'authn', '~> 3.0'
  spec.add_runtime_dependency 'rails', '~> 3.2'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'kramdown'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'coveralls'
  # spec.add_runtime_dependency 'gem', '~> 1.0'
  # spec.add_development_dependency 'gem', '~> 1.0'
end
