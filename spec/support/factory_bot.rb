require 'factory_bot'

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  Dir["#{File.dirname(__FILE__)}/../factories/**/*.rb"].each {|f| require f}
end
