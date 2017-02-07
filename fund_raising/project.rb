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