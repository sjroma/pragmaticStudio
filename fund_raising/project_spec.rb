require_relative 'spec_helper'
require_relative 'project'

describe Project do
  
  before do
    $stdout = StringIO.new
    @initial_funding = 1000
    @target_funding = 5000
    @project = Project.new("Project ABC", @initial_funding, @target_funding)
  end
  
  it "has an initial target funding amount" do
    expect(@project.funding).to eq (1000)
  end
  
  it "computes the total funding outstanding as the target funding amount minus the funding amount" do
    expect(@project.funds_needed).to eq (@target_funding - @initial_funding)
  end
  
  it "increases funds by 25 when funds are added" do
    @project.increase_fund
    
    expect(@project.funding).to eq (@initial_funding + 25)
  end
  
  it "decreases funds by 15 when funds are removed" do
    @project.decrease_fund
    
    expect(@project.funding).to eq (@initial_funding - 15)
  end
  
  context "create with a default fund" do
    before do
      @project = Project.new("Project ABC")
    end
    
    it "has 0 for the funding amount" do
      expect(@project.funding).to eq (0)
    end
  end
end