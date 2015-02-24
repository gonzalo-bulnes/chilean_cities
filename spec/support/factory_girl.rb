require 'factory_girl'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  Dir["#{File.dirname(__FILE__)}/../factories/**/*.rb"].each {|f| require f}

  # check_factories_validity!
  # see https://github.com/thoughtbot/factory_girl/blob/v4.5.0/GETTING_STARTED.md
  #
  # factories_to_lint = FactoryGirl.factories.reject do |factory|
  #   factory.name =~ /^invalid_/
  # end
  #
  # config.before(:suite) do
  #   FactoryGirl.lint factories_to_lint
  # end
end
