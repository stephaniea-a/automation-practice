require 'watir'
require_relative 'AutomationSite'
require 'faker'
require 'forgery'

World(AutomationSite)

driver = Watir::Browser.new :chrome

Before do
	@driver = driver
end
# This is so the browser is not created each time

