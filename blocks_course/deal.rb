# Lesson 5 - Yielding
# 2. Deal Parameters

def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  # call the block here
  score = yield(random_face, random_suit)
  puts "You scored a #{score}!"
end

deal do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  score = face.length + suit.length
end

# Blocks can be optional.  You can write a method that works with or without
# blocks.  Change the DEAL method so that it works even if a block is not
# provided.  I.e. if calling the method without a block it should print "No deal"
puts
def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    random_face = faces.sample
    random_suit = suits.sample
    score = yield(random_face, random_suit)
    puts "You scored a #{score}!"
  else
    puts "No deal!"
  end
end

deal

puts
def deal(number_of_cards)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    number_of_cards.times do
      random_face = faces.sample
      random_suit = suits.sample
      score = yield(random_face, random_suit)
      puts "You scored a #{score}!"
    end
  else
    puts "No deal!"
  end
end

deal(5) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end