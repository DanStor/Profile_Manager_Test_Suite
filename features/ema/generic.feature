Feature: Generic

@generic
Scenario: PM-110 As a user, I should be able to see the entry clearly without having to increase the size of the box myself
Given I am typing an entry
When I am typing an entry which is larger than the text field
Then I should be able to view the what I have typed

@generic2
Scenario: PM-198 Failed Test - Cannot view PDF version of page
Given I am logged in
And I am on the page of profiles
When I open PDF of the first profile
Then I should see the PDF
