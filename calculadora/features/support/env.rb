require File.expand_path(File.dirname(__FILE__) + "/../../config/boot")
require_relative '../../app/app'
require 'capybara/cucumber'
require 'rspec/expectations'

# Capybara.default_driver = :selenium
Capybara.app = Ejemplo::App.tap { |app|  }
