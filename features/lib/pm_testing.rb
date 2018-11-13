require_relative "services/profiles.rb"
require_relative "services/certifications.rb"
require_relative "services/skills.rb"
require_relative "services/education.rb"


module PMTesting
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
end
