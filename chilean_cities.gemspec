# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chilean_cities/version'

Gem::Specification.new do |gem|
  gem.name          = "chilean_cities"
  gem.version       = ChileanCities::VERSION
  gem.authors       = ["Gonzalo Bulnes Guilpain"]
  gem.email         = ["gon.bulnes@gmail.com"]
  gem.description   = %q{A ruby implementation of the Chilean 'comunas'.}
  gem.summary       = %q{Provides a flat table of the Chilean 'comunas'
                         as described by the Subsecretaría de Desarrollo Regional
                         y Administrativo.}
  gem.homepage      = "https://github.com/gonzalo-bulnes/chilean_cities"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "rails", ">= 3.2.11"
  gem.add_development_dependency "sqlite3"

  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'capybara'
  gem.add_development_dependency 'factory_girl_rails'
end
