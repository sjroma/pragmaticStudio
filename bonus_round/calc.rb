class Calculator
  def initialize(in1, in2)
    @in1 = in1
    @in2 = in2
  end
  
  def add
   @in1 + @in2
  end
  
  def subtract
    @in1 - @in2
  end
end

calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract