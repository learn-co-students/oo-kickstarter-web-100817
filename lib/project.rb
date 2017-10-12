require "pry"
class Project
  attr_writer :backers
  attr_reader :title
  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers = Backer.all.select{|backer| backer.backed_projects.include?(self)}
  end


  def add_backer new_backer
    if !new_backer.backed_projects.include?(self)
      self.backers.push(new_backer)
      new_backer.back_project(self)
    end
  end

end
