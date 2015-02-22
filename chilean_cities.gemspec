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
  gem.license         = "GPLv3"

  gem.files = Dir["{doc,lib}/**/*", "Gemfile", "LICENSE.txt", "Rakefile", "README.md"]
  gem.test_files = Dir["spec/**/*"]
end

