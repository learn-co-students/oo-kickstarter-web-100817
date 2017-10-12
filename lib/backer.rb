require 'pry'
require_relative "project.rb"
class Backer


  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    if !@backed_projects.include?(project) 
      @backed_projects << project
      project.add_backer(self)
    end
  end


end
