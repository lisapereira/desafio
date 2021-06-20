require 'cucumber'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'securerandom'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = 'http://automationpractice.com'
    config.default_max_wait_time = 10 #espera até 10seg e se o elemento não encontrar encerra.. Se o elemento aparecer em 3 ou 7 já clica.. se passar de 10 ele encerra.. espera EXPLICITA
end

Capybara.page.driver.browser.manage.window.maximize

