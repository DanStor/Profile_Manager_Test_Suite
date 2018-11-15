require_relative "services/profiles.rb"
require_relative "services/certifications.rb"
require_relative "services/skills.rb"
require_relative "services/education.rb"
require_relative "services/generic.rb"
require_relative "services/comments.rb"
require_relative "services/employment.rb"
require_relative "services/custom_section_page.rb"
require_relative "services/login.rb"
require_relative "services/projects.rb"



module PMTesting

  def sign_in
    SignIn.new
  end

  def pm_profiles
    Profiles.new
  end

  def pm_certifications
    Certifications.new
  end

  def pm_skills
    Skills.new
  end

  def pm_education
    Education.new
  end

  def pm_projects
    Projects.new
  end

  def generic
    Generic.new
  end

  def admin
    Admin.new
  end

  def comments
    Comments.new
  end


  def custom_section_page
    CustomSectionPage.new
  end

  def employment
    Employment.new
  end

  def login
    Login.new
  end

end
