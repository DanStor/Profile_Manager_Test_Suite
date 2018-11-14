require "capybara"

class SignIn
  include Capybara::DSL

  def sign_in_admin
    fill_in('email', :with => 'eng16admin@spartaglobal.com')
    fill_in('password', :with => 'Password123')
    click_button('submit')
  end

  def sign_in_student
    fill_in('email', :with => 'eng16student@spartaglobal.com')
    fill_in('password', :with => 'Password123')
    click_button('submit')
  end
end
