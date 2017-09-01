class Homepage

	def initialize(browser)
		@driver = browser
	end

	def visit(url)
		@driver.goto url
	end

	def click_on_sign_in_link
		@driver.link(text: 'Sign in').click
	end

end