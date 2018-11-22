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

When("I paste an invalid description") do
  pm_certifications.paste_invalid
end

Then("too many words error is displayed") do
  expect(pm_certifications.get_notice_text).to eq "Too many words"
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
  expect(pm_certifications.certificates_visible?).to be true
end

When("I press edit for a specific certification") do
  #Edit latest certificate
  pm_certifications.click_last_edit
end

When("I edit the title") do
  pm_certifications.input_edit_title @edit_title_text
end

When("I edit the description") do
  pm_certifications.input_edit_description @edit_description_text
end

Then("the changes should be reflected") do
  pm_certifications.visit_certifications
  expect(pm_certifications.check_edit_title).to eq @edit_title_text
  sleep 2
end

When("I press destroy for a single certification") do
  @last_id = pm_certifications.get_last_id
  pm_certifications.delete_certificate
end

When("I press cancel") do
  pm_certifications.click_cancel
end

When("I press confirm") do
  pm_certifications.click_confirm
end

Then("the certification should be removed") do
  expect(pm_certifications.get_last_id).to_not eq @last_id
end

Then("the certification should not be removed") do
  expect(pm_certifications.get_last_id).to eq @last_id
end
