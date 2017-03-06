require_relative 'auditable'

class LoadedDie
  include Auditable
  
  attr_reader :number
  
  def roll
    numbers = [1, 1, 2, 5, 6, 6]
    @numbers = numbers.sample
    audit
    @numbers
  end
end