class Project
  attr_reader :title

  @@backers = []

  def initialize(title)
    @title = title
  end

  def add_backer(backer)
    @@backers << backer
    backer.backed_projects << self
  end

  def backers
    @@backers
  end

  def back_project
    @@backers
  end

end
