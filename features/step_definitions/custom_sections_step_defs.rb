Given("I am on the custom page") do
  custom_section_page.visit_custom_section_page
  # sleep 2
end

When("I click a listed custom item") do
  custom_section_page.click_custom_section "hobbies"
  sleep 2
end

Then("I should be taken to the corresponding show page for that custom item") do
  expect(current_url).to eq 'http://localhost:3000/customs/9'
end

When("I click the new custom section button") do
  custom_section_page.click_new_custom_section
end

When("I am taken to the the create new custom page") do
  expect(current_url).to eq 'http://localhost:3000/customs/new'
end

When("I add valid custom section details") do
  custom_section_page.input_title TITLE
  custom_section_page.input_heading HEADING
  custom_section_page.input_body BODY
  sleep 2
end

When("I press the save button") do
  custom_section_page.click_save
  sleep 2
end

Then("the newly made custom item is listed") do
  sleep 2
  expect(current_url).to eq 'http://localhost:3000/customs'
  expect(custom_section_page.find_custom_section TITLE).to be true
  expect(custom_section_page.find_notice_message).to eq  CUSTOM_CREATED_MESSAGE

end

Given("I am on the create new custom page") do
  custom_section_page.visit_custom_section_page
  custom_section_page.click_new_custom_section
  expect(current_url).to eq 'http://localhost:3000/customs/new'
end

When("I click the dropdown bar for the title section") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("hobbies, volunteering and languages are listed in the dropdown menu") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press the destroy button for a specific item") do
  custom_section_page.destroy_section TITLE
  sleep 2
end

When("I click the confirm button on the delete entry alert") do
  custom_section_page.click_cancel
  sleep 2
end

Then("the custom was successfully destroyed message is displayed") do
  expect(custom_section_page.find_notice_message).to eq  DELETED_MESSAGE
end

Then("the targeted item should no longer be displayed on the custom page") do
  expect(find_custom_section TITLE).to be false
end

When("I click the cancel button on the delete entry alert") do
  custom_section_page.click_cancel
end

Then("the targeted item remains on the custom page") do
  expect(custom_section_page.find_custom_section TITLE).to be true
end

Given("I am on the edit page for a custom item") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the save button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I am taken to the custom page") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I see the custom section was successfully updated message") do
  pending # Write code here that turns the phrase above into concrete actions
end
