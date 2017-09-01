class SignInPage

	def initialize(browser)
		@driver = browser
	end

	def input_email
		@driver.text_field(id: 'email_create').set(Faker::Internet.email)
	end

	def click_on_create_account
		@driver.button(id: 'SubmitCreate').click
	end

	def input_text_field(id, field_value)
		@driver.text_field(id: id).set(field_value)
	end

	def click_on_sign_in_button
		@driver.button(id: 'SubmitLogin').click
	end

end