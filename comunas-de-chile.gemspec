# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'comunas-de-chile/version'

Gem::Specification.new do |gem|
  gem.name          = "comunas-de-chile"
  gem.version       = Chile::Comunas::VERSION
  gem.authors       = ["Gonzalo Bulnes Guilpain"]
  gem.email         = ["gon.bulnes@gmail.com"]
  gem.description   = %q{A flat table of the Chilean cities for Rails}
  gem.summary       = %q{Provides generators and data to work with Chilean cities in Rails.}
  gem.homepage      = "https://github.com/gonzalo-bulnes/comunas-de-chile"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
