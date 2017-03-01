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
  
  it "increases funds by $25 when funds are added" do
    @project.add_funds
    
    expect(@project.funding).to eq(@initial_funds + 25)
  end
  
  it "decreases funds by $15 when funds are removed" do
    @project.remove_funds
    
    expect(@project.funding).to eq(@initial_funds - 15)
  end
  
  it 'computes pledges as the sum of all pledges' do
    expect(@project.pledges).to eq(0)
    
    @project.received_pledge(Pledge.new(:silver, 75))
    
    expect(@project.pledges).to eq(75)
    
    @project.received_pledge(Pledge.new(:gold, 100))
    
    expect(@project.pledges).to eq(175)
    
    @project.received_pledge(Pledge.new(:gold, 100))
    
    expect(@project.pledges).to eq(275)
  end
  
  it 'computes total funds as the sum of a projects funding and pledges' do
    @project.received_pledge(Pledge.new(:gold, 100))
    @project.received_pledge(Pledge.new(:gold, 100))
    
    expect(@project.total_funds).to eq(1200)
  end
  
  it 'yields each received pledge and its total pledge amount' do
    @project.received_pledge(Pledge.new(:bronze, 50))
    @project.received_pledge(Pledge.new(:silver, 75))
    @project.received_pledge(Pledge.new(:silver, 75))
    @project.received_pledge(Pledge.new(:gold, 100))
    @project.received_pledge(Pledge.new(:gold, 100))
    @project.received_pledge(Pledge.new(:gold, 100))
    
    yielded = []
    @project.each_received_pledge do |pledge|
      yielded << pledge
    end
    
    yielded.should == [
      Pledge.new(:bronze, 50),
      Pledge.new(:silver, 150),
      Pledge.new(:gold, 300)
    ]
  end
  
  context "created without a funding amount" do
    before do
      @project = Project.new("Project ABC", 5000)
    end
    
    it "has a default funding amount of 0" do
      expect(@project.funding).to eq(0)
    end
  end
  
  context 'when total funding outstanding is less than or equal to 0' do
    before do
      @project = Project.new("Project ABC", 5000, 5000)
    end
    
    it 'is fully-funded' do
      @project.should be_fully_funded
    end
  end
  
  context 'when total funding outstanding is greater than 0' do
    before do
      @project = Project.new("Project ABC", 5000, 1000)
    end
    
    it 'is under-funded' do
      expect(@project).to_not be_fully_funded
    end
  end
  
end