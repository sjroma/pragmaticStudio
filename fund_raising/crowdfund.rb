class Project
  attr_accessor :name
  attr_reader :funding, :target_goal
  
  def initialize(name, funding=10, target_goal= 500)
    @name = name
    @funding = funding
    @goal = target_goal
  end
  
  def to_s
    "#{@name} has $#{@funding} in funding towards a goal of $#{@goal}.  
    It needs to raise an additional $#{funds_needed}"
  end
  
  def increase_fund
    @funding += 25
    puts "#{@name} got more funds"
  end
  
  def decrease_fund
    @funding -= 15
    puts "#{@name} lost some funds"
  end
  
  def funds_needed
    @goal - @funding
  end
end

class FundRequest
  attr_reader :title
  
  def initialize(title)
    @title = title
    @projects = []
  end
  
  def add_project(a_project)
    @projects << a_project
  end
  
  def request_funding
    puts "There are #{@projects.size} projects that you could fund:"
    @projects.each do |project|
      puts project
    end
    @projects.each do |project|
      project.increase_fund
      project.decrease_fund
      project.increase_fund
      puts project
    end
  end
end

project1 = Project.new("Project ABC", 1000, 5000)
project2 = Project.new("Project LMN", 500, 3000)
project3 = Project.new("Project XYZ", 25, 75)

projects = FundRequest.new("VC-Friendly Start-up Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.request_funding