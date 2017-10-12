require "pry"

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

  def back_project new_project
    self.backed_projects << new_project
    new_project.add_backer(self)
  end

end
