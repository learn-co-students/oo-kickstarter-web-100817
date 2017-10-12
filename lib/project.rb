class Project

  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = Array.new
  end

  def add_backer(backer)
    self.backers << backer
    backer.backed_projects << self
  end

end
