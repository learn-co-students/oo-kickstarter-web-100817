class Backer

  attr_accessor :name, :backed_projects


  def initialize (name)
    @name =name
    @backed_projects = []
  end

  def back_project(project_obj)
    @backed_projects << project_obj
    project_obj.backers << self
  end

  def backed_project
    @back_projects
  end

end
