Given("that there is a user made") do
  comments.visit_page
  expect(current_url).to eq 'http://localhost:3000/login'
  sign_in.sign_in_student
  comments.click_new_profile
  comments.fill_in_new_profile
  comments.comments_save
  comments.log_out
  sleep 1
end

Given("that comments have been made to a users profile") do
  comments.visit_page
  expect(current_url).to eq 'http://localhost:3000/login'
  sign_in.sign_in_admin
  expect(current_url).to eq 'http://localhost:3000/'
  comments.click_on_students_profile
  comments.click_comments_button
  sleep 1
  comments.click_comments_section
  comments.fill_in_comment
  comments.click_create_comment
  expect(comments.check_if_comment_added).to eq 'Comment was successfully created.'
  comments.log_out
  sleep 1
end

When("the changes are saved") do
  comments.visit_page
  expect(current_url).to eq 'http://localhost:3000/login'
  sign_in.sign_in_student
  expect(current_url).to eq 'http://localhost:3000/'
  comments.click_on_students_profile
  comments.click_comments_button
  sleep 1
  comments.click_comments_section
  comments.comments_checkbox
  comments.comments_save
end

Then("a notification is sent to the relevant student") do
  expect(comments.check_if_comment_added).to eq 'Comment was successfully updated.'
end

Given("that the user is logged in and is viewing their own profile") do
  comments.visit_page
  expect(current_url).to eq 'http://localhost:3000/login'
  sign_in.sign_in_student
  expect(current_url).to eq 'http://localhost:3000/'
end

When("the profile is displayed") do
  comments.click_on_students_profile
  comments.click_comments_button
  sleep 1
end

Then("the user should be able to see the comments made and by which admin") do
  comments.click_comments_section
  expect(comments.check_comment_notification).to eq true
end
