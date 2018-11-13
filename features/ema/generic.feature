Feature: Generic

@generic
Scenario: PM-110 As a user, I should be able to see the entry clearly without having to increase the size of the box myself
Given I am typing an entry
When I am typing an entry which is larger than the text field
Then I should be able to view the what I have typed
Then I should not be able to view what I have typed

@generic
Scenario: PM-198 Failed Test - Cannot view PDF version of page
Given I am logged in as a user
And I am on the profiles page
When I open PDF of the first profile
Then I should see a PDF
Then I should not see the PDF
