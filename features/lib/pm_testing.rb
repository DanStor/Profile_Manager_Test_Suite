require_relative "services/profiles.rb"
require_relative "services/certifications.rb"
require_relative "services/skills.rb"
require_relative "services/education.rb"
require_relative "services/generic.rb"
require_relative "services/comments.rb"


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

  def generic
    Generic.new
  end

  def admin
    Admin.new
  end

  def comments
    Comments.new
  end

end
