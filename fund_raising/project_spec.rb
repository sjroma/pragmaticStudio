require_relative 'spec_helper'
require_relative 'project'

describe Project do
  
  before do
    $stdout = StringIO.new
    @initial_funds = 1000
    @project = Project.new("Project ABC", 5000, @initial_funds)
  end
  
  it "has an initial target funding amount" do
    expect(@project.target).to eq(5000)
  end
  
  it "computes the total funds outstanding as the target funding amount minus the funding amount" do
    expect(@project.total_funding_outstanding).to eq(5000 - 1000)
  end
  
  it "increases funds by 25 when funds are added" do
    @project.add_funds
    
    expect(@project.funding).to eq(@initial_funds + 25)
  end
  
  it "decreases funds by 15 when funds are removed" do
    @project.remove_funds
    
    expect(@project.funding).to eq(@initial_funds - 15)
  end
  
  context "created without a funding amount" do
    before do
      @project = Project.new("Project ABC", 5000)
    end
    
    it "has a default funding amount of 0" do
      expect(@project.funding).to eq(0)
    end
  end
end