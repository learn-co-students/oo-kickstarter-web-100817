
require 'pry'
class Backer

attr_accessor :name
attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects =[]
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end


  # def backed_projects
  #   @backed_projects
  # end

end

# binding.pry
