# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'authn/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "authn-rails"
  gem.version       = AuthN::Rails::VERSION
  gem.authors       = ["Kurtis Rainbolt-Greene"]
  gem.email         = ["me@kurtisrainboltgreene.name"]
  gem.summary       = %q{The plugin library for AuthN and Rails}
  gem.description   = gem.summary
  gem.homepage      = "http://krainboltgreene.github.com/authn-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'authn', '~> 3.0'
  gem.add_runtime_dependency 'rails', '~> 3.2'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'kramdown'
  # gem.add_runtime_dependency 'gemname', '~> 1.0'
  # gem.add_development_dependency 'gemname', '~> 1.0'
end
