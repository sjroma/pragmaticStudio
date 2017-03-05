require_relative 'grant_project'

describe 'GrantProject' do
  before do
    $stdout = StringIO.new
    @initial_funds = 1000
    @project = GrantProject.new("Grant 123", 5000, @initial_funds)
  end
  
  it 'does not ever have funds removed' do
    @project.remove_funds
    expect(@project.funding).to eq(@initial_funds)
  end
end