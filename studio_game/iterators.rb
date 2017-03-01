def conversation
  puts "Hello"
  yield
  puts "Goodbye"
end

conversation { puts "Good to meet you!" }

puts 
def five_times
  yield 1
  yield 2
  yield 3
  yield 4
  yield 5
end

five_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

puts
def five_times
  1.upto(5) do |count|
    yield count
  end
end

five_times do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

puts
def n_times(number)
  1.upto(number) do |count|
    yield count
  end
end

n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

puts
def three_times
  yield 1
  puts "Ready"
  yield 2
  puts "Set"
  yield 3
  puts "Go"
end

three_times { |n| puts n }