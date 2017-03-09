puts "Enumerables Part I"
# Given the following array:
scores = [83, 71, 92, 64, 98, 87, 75, 69]
# Iterate through scores and select those greater than 80. Store them in a new
# array called high_scores and print out its contents.
high_scores = scores.select { |s| s > 80 }
p high_scores

# Do the opposite and reject those greater than 80.  Store in a new array
# called low_scores and print it out
puts
low_scores = scores.reject { |s| s > 80 }
p low_scores

# Are there any failing scores-scores less than 70? Use an Enumerable method
# to find out and print the answer.
puts
puts scores.any? { |f| f < 70 }

# Given there's a least one failing score, find and print the first score
# that's less than 70.
puts
puts scores.detect { |f| f < 70 }

# The methods select! and reject! change the elements in the original array
# Permanently change the scores array to only include scores greater than 70.
# Print out the scores array to verify it's been changed.
p scores
scores.select! { |s| s > 70 }
puts "After array has been changed"
p scores

# Then permanently kick out all the even scores
scores.reject! { |s| s.even? }
p scores

puts
puts "Enumerables Part II"
# Given the following array:
scores = [83, 71, 92, 64, 98, 87, 75, 69]
# Map the scores array into a new array called scores_doubled that contains all
# the scores multiplied by 2
scores_doubled = scores.map { |score| score * 2 }
p scores_doubled

# The class whose scores total more than 600 gets ice cream and the afternoon off.
# Use the reduce method to sum up all the scores in the array and print the total.
puts
total = scores.reduce(0) { |sum, score| sum + score }
puts "Total score: #{total}"

# Partition the scores into two arrays called evens and odds and print them out
puts
evens, odds = scores.partition { |score| score.even? }
puts "Evens:"
p evens
puts "Odds:"
p odds