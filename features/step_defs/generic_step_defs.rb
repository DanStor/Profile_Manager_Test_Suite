Given("I am typing an entry") do
  generic.visitLoginPage
  generic.logIn "eng16admin@spartaglobal.com"
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
  # generic.deleteSection
end

Given("I am logged in as a {string}") do |string|
  generic.visitLoginPage
  generic.logIn string
end

Given("I am on the page of profiles") do
  generic.visitProfiles
end

When("I open PDF of the first profile") do
  generic.openPDFOfProfile
  sleep 4
end

Then("I should not see the PDF") do
  expect(generic.title).to eq "Action Controller: Exception caught"
  sleep 4
end
