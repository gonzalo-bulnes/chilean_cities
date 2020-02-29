$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chilean_cities/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |gem|
  gem.name          = "chilean_cities"
  gem.version       = ChileanCities::VERSION
  gem.authors       = ["Gonzalo Bulnes Guilpain"]
  gem.email         = ["gon.bulnes@gmail.com"]
  gem.description   = %q{A ruby implementation of the Chilean 'comunas'.}
  gem.summary       = %q{Provides a Ruby representation of the Chilean 'comunas'
                         as described by the Subsecretaría de Desarrollo Regional
                         y Administrativo.}
  gem.homepage      = "https://github.com/gonzalo-bulnes/chilean_cities"
  gem.license         = "GPL-3.0"

  gem.files = Dir["{doc,lib}/**/*", "Gemfile", "LICENSE.txt", "Rakefile", "README.md"]
  gem.test_files = Dir["spec/**/*"]

  gem.add_dependency "activemodel", ">= 3.2.11", "< 7"
  gem.add_dependency "rake"
  gem.add_dependency "multi_json", "~> 1.0"

  gem.add_development_dependency "rspec", "~> 3.0"
  gem.add_development_dependency "inch", "~> 0.4.6"
  gem.add_development_dependency "factory_girl", "~> 4.5"
end
