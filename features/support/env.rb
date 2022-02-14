require "capybara"
require "capybara/cucumber"

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 10
  config.app_host = "https://hportal.webmotors.com.br"
end
