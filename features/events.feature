@events
Feature: As a login user
I should able to open a event form

@login_page
Scenario:
Given I am on event page
When I click on login button it should open a form
Then I will see the form

@insert_fields
Scenario:
Given I am in login form
When I have given the valid email and password and click OK
Then I should be able to open home page

@home_page
Scenario:
Given I am in home page
When I click on Create New Event
Then I should see Create New Event form

@fill_all_fields
Scenario:
Given I am in Create New Events form
When I fill all the fields and click on OK button
Then I should get sucessfully login message

@check_event
Scenario:
Given I am in home page
When I click on 2 it goes to next list
Then I should get the name form who are in the list

@check_events
Scenario:
Given I am in home page
When I click on 3 it goes to next list
Then I should get the name form who are in the list
