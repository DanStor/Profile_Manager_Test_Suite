Given("I'm on the Certifications page") do
  pm_certifications.visit_certifications
  expect(current_url).to eq "http://localhost:3000/certifications"
end

When("I press new Certification") do
  pm_certifications.click_new_certification
end

When("I add a valid title") do
  pm_certifications.input_valid_title
end

When("I add a valid description") do
  pm_certifications.input_valid_description
end

When("I press save") do
  pm_certifications.click_save
end

Then("the certification is added") do
  expect(pm_certifications.get_notice_text).to eq @certificate_added_message
end

When("I add an invalid title") do
  pm_certifications.input_invalid_title
end

When("I add an invalid description") do
  pm_certifications.input_invalid_description
end

Then("an error is displayed") do
  expect(pm_certifications.error?).to be true
end

When("I add some words to the description") do
  pm_certifications.add_word 0
  sleep 2
end

Then("the word count should decrease") do
  expect(pm_certifications.get_word_count.to_i).to eq 99
end

When("I remove some words from the description") do
  pm_certifications.remove_word
end

Then("the word count should increase") do
  expect(pm_certifications.get_word_count.to_i).to eq 100
end

Then("I should be able to view certifications") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press the title of a specific certification") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I edit the title") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I edit the description") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the changes should be reflected") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I press destroy for a single certification") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the certification should be removed") do
  pending # Write code here that turns the phrase above into concrete actions
end
