require 'pry'
# require_relative './project'
class Backer
  @@all_backers = []

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name)
    @name = name
    @backed_projects = []
    @@all_backers << self
  end

  def self.all
    @@all_backers
  end

  def back_project(new_project)
    self.backed_projects << new_project
    new_project.add_backer(self)

  end

end

# yassi = Backer.new
#When a backer has added a project
#to its list of backed projects,
#that project should also add
#the backer to its list of backers.
#Refer back to the Code
#Along about Collaborating Objects.
