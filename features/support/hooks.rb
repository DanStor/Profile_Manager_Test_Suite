Before("@certification") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end

Before("@certification_invalid_description") do
  visit('/')
  sign_in.sign_in_student

  @certificate_added_message = "*Certification was successfully created."
  sleep 1
end


After("@certification") do
  sleep 2
end

Before("@education") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@profiles") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@projects") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end

Before("@skills") do
  visit('/')
  sign_in.sign_in_student
  sleep 2
end
