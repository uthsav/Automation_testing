
Given("I am on home page") do
	@browser.navigate.to  "http://eventscheduling.herokuapp.com/"
end

When("I login with valid credentials") do
	@browser.find_element(xpath: '//div/div[2]/ul/li[2]/form/input').click
	sleep 2
	@browser.find_element(name: 'email').send_keys "pajju75@gmail.com"
	sleep 2
	@browser.find_element(name: 'password').send_keys "uthsavgowda"
	sleep 2
	@browser.find_element(name: 'commit').click
	sleep 2
end

Then("I should see {string}") do |string|
	@browser.find_element(xpath: ".//*[@id='div_flash_container']").displayed?
end


Given("I am in event schedular dashboard") do
	@browser.find_element(xpath: '//div/div[2]/div').displayed?
	sleep 2
	@browser.find_element(xpath: '//div/div/div[1]/form/input').click
	sleep 2
end

When("I create the new event with valid data") do
	sleep 2
	@browser.find_element(id: 'event_name').send_keys "cricket"
	sleep 2
	@browser.find_element(name: 'event[venue]').send_keys "mysore"
	sleep 2
	@browser.find_element(id: 'datepicker').send_keys "2012-5-8"
	sleep 2
	@browser.find_element(id: 'event_time').send_keys "10:15"
	sleep 2
	@browser.find_element(name: 'event[description]').send_keys "hello goodmorning"
	sleep 2
	@browser.find_element(id: 'signup_button').click
	sleep 2
end

Then("I should see the events created in the list") do
	sleep 2
	var = @browser.find_element(xpath: '//div[3]/div/div/div[4]/div[1]').text
	var1 = "CRICKET"
	if var.include? var1
		puts "#{var1} Event created succussfully!"
	else
		raise puts "#{var1} Not found"
	end
end




















