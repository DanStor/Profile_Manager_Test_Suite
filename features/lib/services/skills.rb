require "capybara"

class Skills
  include Capybara::DSL

  # Scenario 1
  def visit_homepage
    visit('/')
  end

  def click_skills_tab
    click_link('Skills')
  end

  def create_new_skill
    click_link('Create Skill')
  end

  def fill_in_skill
    fill_in('skill[skills]', :with => 'Team Leader')
  end

  def click_save
    click_on('Save')
  end

  def get_notice
    find('.notice').text
  end

  # Scenario 2


  # Scenario 3
  def create_skill
      click_link('Create Skill')
  end

  def input_blank_skill
    click_button('save-button')
  end

  def empty_skill_error
    page.has_content? ('2 errors prohibited this skill from being saved:')
  end
end
