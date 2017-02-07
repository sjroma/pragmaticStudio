require_relative 'project'

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