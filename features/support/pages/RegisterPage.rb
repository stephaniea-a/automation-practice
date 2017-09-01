class RegisterPage

	def initialize(browser)
		@driver = browser
	end

	def select_radio_button
		@driver.radio(id: 'id_gender2').set
	end

	def input_text_field(id, field_value)
		@driver.text_field(id: id).set(field_value)
	end

	def select_fields(id)
		@driver.select_list(id: id)
	end

	def click_on_register_link
		@driver.button(id:'submitAccount').click
	end

	def text_area(id, field_value)
		@driver.textarea(id: id).set(field_value)
	end

	def check_login_text
		@driver.element(class: 'page-heading').text == 'MY ACCOUNT'
		# @driver.element(class: 'header_user_info').text == 'MY ACCOUNT'
		@driver.element(text: 'MY PERSONAL INFORMATION').exists? == true
		@driver.element(class: 'logout').exists? == true
	end
end