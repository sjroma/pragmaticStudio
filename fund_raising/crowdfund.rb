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

project1 = Project.new("Project ABC", 1000, 8500)

project2 = Project.new("Project LMN", 500, 3000)

project3 = Project.new("Project XYZ", 25, 75)

puts project1
puts project1.funds_needed
puts project2
puts project3
project2.decrease_fund
project3.increase_fund
puts project2
puts project3

projects = [project1, project2, project3]
puts "\nThere are #{projects.size} projects to be funded:"
projects.each do |proj|
  puts proj
end

projects.each do |proj|
  puts proj.funding
end

projects.each do |proj|
  proj.decrease_fund
  proj.increase_fund
  proj.increase_fund
  puts proj
end