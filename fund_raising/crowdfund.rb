require_relative 'fundrequest'
require_relative 'project'


project1 = Project.new("Project ABC", 1000, 5000)
project2 = Project.new("Project LMN", 500, 3000)
project3 = Project.new("Project XYZ", 25, 75)

projects = FundRequest.new("VC-Friendly Start-up Projects")
puts projects.title
projects.add_project(project1)
projects.add_project(project2)
projects.add_project(project3)
projects.request_funding