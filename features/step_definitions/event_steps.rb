
Given("I am on event page") do
	@browser.navigate.to  "http://eventscheduling.herokuapp.com/"
  # pending # Write code here that turns the phrase above into concrete actions
end

When("I click on login button it should open a form") do
	@browser.find_element(xpath: '//div/div[2]/ul/li[2]/form/input').click
	sleep 2

  # pending # Write code here that turns the phrase above into concrete actions
end

Then("I will see the form") do
	@browser.find_element(xpath: ".//*[@id='myModal']/div/div").displayed?
	sleep 2
  # pending # Write code here that turns the phrase above into concrete actions
end

Given("I am in login form") do
	@browser.find_element(xpath: ".//*[@id='myModal']/div/div").displayed?
	sleep 2
  # pending # Write code here that turns the phrase above into concrete actions
end

When("I have given the valid email and password and click OK") do
	@browser.find_element(name: 'email').send_keys "pajju75@gmail.com"
	sleep 2
	@browser.find_element(name: 'password').send_keys "uthsavgowda"
	sleep 2


  # pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be able to open home page") do
	@browser.find_element(name: 'commit').click
	sleep 2
  # pending # Write code here that turns the phrase above into concrete actions
end

# Given("I am in Create New Event") do
# 	@browser.find_element(xpath: '//body/div[3]/div/div/div[3]').displayed?
#   # pending # Write code here that turns the phrase above into concrete actions
# end

# When("I click on Create New Event") do
# 	@browser.find_element(xpath: '//body/div[3]/div/div/div[1]/form/input').click
#   # pending # Write code here that turns the phrase above into concrete actions
# end

# Then("I should see Create New Event form") do
# 	@browser.find_element(xpath: './/*[@id='popup_modal']/div[2]/div/div[1]').displayed?
#   # pending # Write code here that turns the phrase above into concrete actions
# end

Given("I am in home page") do
	@browser.find_element(xpath: '//div[3]/div/div/div[3]')
  # pending # Write code here that turns the phrase above into concrete actions
end

When("I click on Create New Event") do
	sleep 2
	@browser.find_element(xpath: '//div[3]/div/div/div[1]/form/input').click
  # pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see Create New Event form") do
	sleep 3
	@browser.find_element(id:'popup_modal').displayed?
  # pending # Write code here that turns the phrase above into concrete actions
end

Given("I am in Create New Events form") do
	@browser.find_element(id:'popup_modal')
	sleep 2
end

When("I fill all the fields and click on OK button") do
	@browser.find_element(id: 'event_name').send_keys "games"
	sleep 2
	@browser.find_element(name: 'event[venue]').send_keys "mysore"
	sleep 2
	@browser.find_element(id: 'datepicker').send_keys "2012-5-8"
	sleep 2
	@browser.find_element(id: 'event_time').send_keys "10:15"
	sleep 2
	@browser.find_element(name: 'event[description]').send_keys "hello"
	sleep 2
	@browser.find_element(id: 'signup_button').click
	sleep 2


end

Then("I should get sucessfully login message") do
 @browser.find_element(id: 'event_form').displayed?
end

When("I click on {int} it goes to next list") do |int|
@browser.find_element(xpath: 'html/body/div[3]/div/div/div[4]/div[1]/nav/span[2]/a').click
sleep 2
end

Then("I should get the name form who are in the list") do
@browser.find_element(xpath: 'html/body/div[3]/div/div/div[4]/div[1]/div[1]/div').displayed?
sleep 2
end







