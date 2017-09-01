require_relative 'pages/Homepage'
require_relative 'pages/RegisterPage'
require_relative 'pages/SignInPage'

module AutomationSite

	def homepage
		Homepage.new(@driver)
	end

	def sign_in_page
		SignInPage.new(@driver)
	end

	def register_page
		RegisterPage.new(@driver)
	end

end