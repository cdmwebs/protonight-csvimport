ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require File.expand_path(File.dirname(__FILE__) + "/blueprints")
require 'test_help'

class ActiveSupport::TestCase
  self.use_transactional_fixtures = true
  self.use_instantiated_fixtures = false

  setup { Sham.reset }
end

require 'capybara/rails'

class ActionController::IntegrationTest
  include Capybara
  Capybara.default_driver = :rack_test
end
