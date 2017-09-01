Given(/^I can access the homepage$/) do
  homepage.visit('http://automationpractice.com/index.php')
end

And(/^I then click sign in$/) do
  homepage.click_on_sign_in_link
end

When(/^I input an email address$/) do
  sign_in_page.input_email
  sleep(2)
end

And(/^click on create an account$/) do
  sign_in_page.click_on_create_account
end

And(/^input all necessary registration details$/) do
  register_page.select_radio_button
  register_page.input_text_field('customer_firstname', Faker::Name.first_name)
  register_page.input_text_field('customer_lastname', Faker::Name.last_name)
  register_page.input_text_field('passwd', Faker::Internet.password(min_length = 5, max_length = 16))
  sleep(3)
  register_page.select_fields('days').select_value('10')
  register_page.select_fields('months').select_value('5')
  register_page.select_fields('years').select_value('2000')
  sleep(3)
  register_page.input_text_field('company', Forgery('name').company_name)
  register_page.input_text_field('address1', Forgery('address').street_address)
  register_page.input_text_field('city', Forgery('address').city)
  sleep(3)
  register_page.select_fields('id_state').select "Delaware"

  register_page.input_text_field('postcode', Forgery('address').zip)
  register_page.select_fields('id_country').select('United States')

  register_page.text_area('other',Forgery('lorem_ipsum').paragraph)
  register_page.input_text_field('phone',Forgery('address').phone)
  register_page.input_text_field('phone_mobile', Forgery('address').phone)
  sleep(2)
end

And(/^once I click create account$/) do
  register_page.click_on_register_link
end

Then(/^I should be logged in$/) do
  register_page.check_login_text
end

When(/^I enter an email (.*)$/) do |email|
  sign_in_page.input_text_field('email', email)
end

And(/^I input a password (.*)$/) do |password|
  sign_in_page.input_text_field('passwd', password)
end

When(/^click on sign in$/) do
  sign_in_page.click_on_sign_in_button
end
