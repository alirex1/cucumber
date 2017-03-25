$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'page-object'
require 'require_all'
require 'fig_newton'
require 'capybara'
require 'watir'
require 'cucumber'
require 'capybara/cucumber'
require 'rspec'

World(PageObject::PageFactory)
require_all 'lib'
