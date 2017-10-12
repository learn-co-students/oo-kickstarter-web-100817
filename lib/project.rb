require 'pry'
# require_relative '../lib/backer'

class Project

  attr_writer :backers
  attr_reader :title

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    
    @backers = Backer.all.select do |backer|
      backer.backed_projects.include?(self)
    end
  end

  def add_backer(backer)
    if !backer.backed_projects.include?(self)
      backer.back_project(self)
      self.backers << backer
    end
  end
end

# new_project = Project.new("Yassi")
# Pry.start
