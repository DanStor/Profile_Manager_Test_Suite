Before("@certification") do
  visit('/')
  sign_in.sign_in_student
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
