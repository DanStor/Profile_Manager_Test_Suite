Given("that comments have been made to a users profile") do
  comments.visit_page
  expect(current_url).to eq 'http://localhost:3000/login'
  comments.sign_in_admin
  expect(current_url).to eq 'http://localhost:3000/'
  comments.click_on_students_profile
  comments.click_comments_button
  sleep 1
  comments.click_comments_section
  comments.fill_in_comment
  comments.click_create_comment
  expect(comments.check_if_comment_added).to eq 'Comment was successfully created.'
  comments.log_out
  sleep 10
end

When("the changes are saved") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("a notification is sent to the relevant student") do
  pending # Write code here that turns the phrase above into concrete actions
end

Given("that the user is logged in and is viewing their own profile") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("the profile is displayed") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the user should be able to see the comments made and by which admin") do
  pending # Write code here that turns the phrase above into concrete actions
end
