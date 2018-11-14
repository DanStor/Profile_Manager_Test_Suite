Given("I am on the employment page") do
  visit("http://localhost:3000/employments")
  expect(current_url).to eq "http://localhost:3000/employments"
end

When("I click on an item") do
  click_link("This Business")
end

Then("I am now on the show page for that specific item") do
  expect(find_by_id("company").value).to eq "This Business"
end

When("I click the new employment button") do
  click_on("New Employment")
end

When("I enter valid details") do
  fill_in "company", with: "A Business"
  fill_in "role", with: "A Role"
  fill_in "start-date", with: "27/08/2018"
  fill_in "end-date", with: "12/10/2018"
  find(:xpath, "/html/body/div/div[2]/div/div/form/div[4]/trix-editor").set("I did some business things here. You would be impressed.")
end

When("I click the save button") do
  click_on("Save")
end

Then("I am redirected to the employment show page") do
  content = find(".content-main").find_all("p")
  expect(content[0].text).to eq "Start date: 2018-08-27"
  expect(content[1].text).to eq "End date: 2018-10-12"
  expect(content[2].text).to eq "Company: A Business"
  expect(content[3].text).to eq "Role: A Role"
  expect(content[4].text).to eq "Description:"

  expect(find(".content-main").find("div").text).to eq "I did some business things here. You would be impressed."
end

Then("I see the employment was successfully created message") do
  expect(find(".notice").text).to eq "*Employment was successfully created."
end

Then("I press the back button") do
  click_on("Back")
end

Then("I see the employment page") do
  expect(current_url).to eq "http://localhost:3000/employments"
end

Then("I can see the new item") do
  expect(has_link?("A Business")).to eq true
end

Then("I see ten error messages displayed") do
  content = find("#error_explanation").find_all("li")
  expect(content[0].text).to eq "Company is too short (minimum is 1 character)"
  expect(content[1].text).to eq "Company can't be blank"
  expect(content[2].text).to eq "Role is too short (minimum is 1 character)"
  expect(content[3].text).to eq "Role can't be blank"
  expect(content[4].text).to eq "Start date can't be blank"
  expect(content[5].text).to eq "Start date is not a valid date"
  expect(content[6].text).to eq "Start date is not a valid datetime"
  expect(content[7].text).to eq "Description can't be blank"
  expect(content[8].text).to eq "End date can't be blank"
  expect(content[9].text).to eq "Still employed can't be blank"
end

Given("I have recieved error messages when creating a new employment item with invalid details") do
  visit("http://localhost:3000/employments/new")

  click_on("Save")

  content = find("#error_explanation").find_all("li")
  expect(content[0].text).to eq "Company is too short (minimum is 1 character)"
  expect(content[1].text).to eq "Company can't be blank"
  expect(content[2].text).to eq "Role is too short (minimum is 1 character)"
  expect(content[3].text).to eq "Role can't be blank"
  expect(content[4].text).to eq "Start date can't be blank"
  expect(content[5].text).to eq "Start date is not a valid date"
  expect(content[6].text).to eq "Start date is not a valid datetime"
  expect(content[7].text).to eq "Description can't be blank"
  expect(content[8].text).to eq "End date can't be blank"
  expect(content[9].text).to eq "Still employed can't be blank"
end

When("I click the back button") do
  click_on("Back")
end

Then("I should not see a new item") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press the destroy button for a specific item") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the confirm button on the delete entry alert") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the targeted item should no longer be displayed on the employment page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see a successfully destroyed message") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the cancel button on the delete entry alert") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the targeted item remains on the employment page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the edit page for an employment item") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see the employment was successfully updated message") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("I am on the new employment form page") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the currently employed checkbox") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the currently employed checkbox should be selected") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I edit the end date to a date after the current date") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the end date should display the date that was just input") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the still employed button has not been clicked") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should not be able to edit the end date to a date after the current date") do
  pending # Write code here that turns the phrase above into concrete actions
end
