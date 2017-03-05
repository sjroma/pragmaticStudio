require_relative 'matching_project'

describe 'MatchingProject' do
  before do
    $stdout = StringIO.new
    @initial_funds = 0
    @project = MatchingProject.new("Match 123", 200, @initial_funds)
  end
  
  it 'does not match additional funds when the project is not halfway funded' do
    3.times { @project.add_funds }
    
    expect(@project.halfway_funded?).to be_falsey
  end
  
  it 'is halfway funded when it has received half of its target funding amount' do
    4.times { @project.add_funds }
    
    expect(@project.halfway_funded?).to be_truthy
  end
  
  it 'receives twice as much added funds when it is halfway funded' do
    7.times { @project.add_funds }
    
    expect(@project.funding).to eq(@initial_funds + (4 *25) + (3 * 25 * 2))
  end
end