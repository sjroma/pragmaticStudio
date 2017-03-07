# Iterate through Arrays and Hashes

cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.shuffle.each do |card|
  puts "#{card.upcase} - #{card.length}"
end

# this is the same as the above
puts
cards.shuffle.each { |card| puts "#{card.upcase} - #{card.length}" }

puts
cards.reverse_each { |card| puts "#{card.upcase} - #{card.length}" }

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}
# calling each on a hash passes two parameters to the block, the key and the value
puts
scores.each { |name, value| puts "#{name} scored a #{value}!"}