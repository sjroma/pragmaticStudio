# Lesson 5 - Yielding

# Write a three_times method that takes a block and calls it three times
def three_times
  yield
  yield
  yield
end

three_times do
  puts "Ho!"
end

# Change the method to pass the current iteration count (1 through 3)
# to the block as a parameter
puts
def three_times
  yield(1)
  yield(2)
  yield(3)
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

# change the method to use the upto method to iterate from 1 to 3.  Each time
# through the loop, call the block and pass the current interation count as a 
# parameter to the block. (Iterator methods can piggyback on built-in iterator methods)
puts
def three_times
  1.upto(3) do |count|
    yield count
  end
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

# The three_times method is limiting.  It's only useful when you want to call a block
# exactly three times.  Here is a generic iterator method called n_times that doesn't
# have a hard-coded max count.  Instead, it passes the maximum count into the method
# as a method parameter named number.
puts
def n_times(number)
  1.upto(number) do |count|
    yield(count)
  end
end

n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end