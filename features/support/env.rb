require 'capybara/cucumber'
require 'rspec'
require_relative '../lib/pm_testing.rb'

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
  config.ignore_hidden_elements = false
  config.default_max_wait_time = 10
  config.match = :prefer_exact
  config.default_driver = :chrome
<<<<<<< HEAD
  config.app_host = "http://localhost:3000"
=======
  config.app_host = "localhost:3000"
>>>>>>> d755c773bb55194373811e1097ca885ad1c92be3
end

# Sets up the module from super class- Means we dont have
# to use an instance variable when setting up.
World(PMTesting)
