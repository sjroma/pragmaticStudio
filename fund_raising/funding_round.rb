require_relative 'die'
require_relative 'project'
require_relative 'pledge_pool'

module FundingRound
  
  def self.one_round(project)
    die = Die.new
    number_rolled = die.roll
    if number_rolled.odd?
      project.remove_funds
    else
      project.add_funds
    end
    
    pledge = PledgePool.random
    project.received_pledge(pledge)
  end
  
end