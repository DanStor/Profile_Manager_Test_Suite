Given("I am on the employment page") do
  visit("http://localhost:3000/employments")
  @preTableLength = employment.getCompaniesTableLength
  expect(current_url).to eq "http://localhost:3000/employments"
end

When("I click on an item") do
  employment_items = find(".content-main").find_all("tr")
  row = employment_items[-2].find_all("td")
  @link_text = row[0].find("a").text
  row[0].click_on(@link_text)
end

Then("I am now on the show page for that specific item") do
  expect(find_by_id("company").value).to eq @link_text
end

When("I click the new employment button") do
  click_on("New Employment")
end

When("I enter valid details") do
  employment.enterValidDetails
end

When("I click the save button") do
  click_on("Save")
end

Then("I am redirected to the employment show page") do
  expect(employment.containsValidDetails?).to eq true
end

Then("I see the employment was successfully created message") do
  expect(find(".notice").text).to eq "*Employment was successfully created."
end

Then("I press the back button") do
  click_on("Back")
end

Then("I see the employment page") do
  employment_items = find(".content-main").find_all("tr")
  @last_employment_item = employment_items[-2].find_link("Edit")[:id]

  expect(current_url).to eq "http://localhost:3000/employments"
end

Then("I can see the new item") do
  expect(employment.getCompaniesTableLength).to eq @preTableLength + 1
end

Then("I see ten error messages displayed") do
  content = find("#error_explanation").find_all("li")
  expect(employment.errorMessagesPresent? content, [0,1,2,3,4,5,6,7,8,9]).to eq true
end

Given("I have recieved error messages when creating a new employment item with invalid details") do
  visit("http://localhost:3000/employments")
  @preTableLength = employment.getCompaniesTableLength

  visit("http://localhost:3000/employments/new")
  click_on("Save")

  content = find("#error_explanation").find_all("li")
  expect(employment.errorMessagesPresent? content, [0,1,2,3,4,5,6,7,8,9]).to eq true
end

When("I click the back button") do
  click_on("Back")
end

Then("I should not see a new item") do
  expect(employment.getCompaniesTableLength).to eq @preTableLength
  # last_tr = all('tr')[2]
  # within(last_tr) do
  #   expect(find_link("Edit")[:id]).to eq @last_employment_item
  # end
end

When("I click the destroy button for a specific item") do
  last_tr = all('tr')[-2]
  within(last_tr) do
    click_on("Destroy")
  end
end

When("I press the confirm button on the delete entry alert") do
  click_on("Confirm")
end

Then("the targeted item should no longer be displayed on the employment page") do
  expect(employment.getCompaniesTableLength).to eq @preTableLength - 1
end

Then("I see a successfully destroyed message") do
  expect(find(".notice").text).to eq "*Employment was successfully destroyed."
end

When("I press the cancel button on the delete entry alert") do
  click_on("Cancel")
end

Then("the targeted item remains on the employment page") do
  expect(has_link?("A Business")).to be true
end

Given("I am on the edit page for an employment item") do
  visit("http://localhost:3000/employments")
  sleep 2
  row = employment.getCompanyRowAndName
  employment.clickRowEdit row
  # expect(current_url).to eq "http://localhost:3000/employments/1/edit"
end

Then("I see the employment was successfully updated message") do
  expect(find(".notice").text).to eq "*Employment was successfully updated."
end

Given("I am on the new employment form page") do
  visit("http://localhost:3000/employments/new")
  expect(current_url).to eq "http://localhost:3000/employments/new"
end

When("I click the currently employed checkbox") do
  find("#still-employed").click
end

Then("the currently employed checkbox should be selected") do
  expect(find("#still-employed")).to be_checked
end

When("I edit the end date to a date after the current date") do
  fill_in "end-date", with: "11/11/2021"
end

Then("the end date should display the date that was just input") do
  content = find(".content-main").find_all("p")
  expect(content[1].text).to eq "End date: 2021-11-11"

end

When("the still employed button has not been clicked") do
  expect(find("#still-employed")).not_to be_checked
end

Then("I should see an invalid date error message") do
  expect(find("#error_explanation").find("h2").text).to eq "1 error prohibited this employment from being saved:"
end
