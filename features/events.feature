@login
Feature: As a end user
I should able to login to the application
So  that I can create event schedular

@smoke
Scenario:trying to login with valid credentials
Given I am on home page 
When I login with valid credentials 
Then I should see "Logged in!"

@creating_an_events
Scenario:trying to creating an events with valid credentials
Given I am in event schedular dashboard
When I create the new event with valid data
Then I should see the events created in the list

