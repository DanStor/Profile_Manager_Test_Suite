Given("I am typing an entry") do
  generic.visitLoginPage
  sign_in.sign_in_admin
  expect(generic.checkIfLinkCorrect "Welcome , eng16 admin (Admin)").to eq true
  generic.visitSections
  generic.clickOnNewSection
end

When("I am typing an entry which is larger than the text field") do
  generic.inputTextinNewSection "Hobbies"
  generic.saveNewSection
end

Then("I should be able to view the what I have typed") do
  expect(generic.checkIfTitleIsHobbies).to eq "Title: Hobbies"
  generic.deleteSection
end

Given("I am logged in") do
  generic.visitLoginPage
  sign_in.sign_in_admin
end

Given("I am on the page of profiles") do
  generic.visitProfiles
end

When("I open PDF of the first profile") do
  generic.openPDFOfProfile
end

Then("I should see the PDF") do
  generic.checkIfPDF
  expect(generic.checkIfPDF).to eq true
end
