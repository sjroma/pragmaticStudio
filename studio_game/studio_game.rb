class Player
  attr_accessor :name
  attr_reader :health
  
  def name=(new_name)
    @name = new_name.capitalize
  end
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end
  
  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
  
  def score
    @health + @name.length
  end
end

player1 = Player.new("moe")
puts player1

player2 = Player.new("larry", 60)
puts player2

player3 = Player.new("curly", 125)
puts player3
player3.blam
puts player3
player3.w00t
puts player3
puts player1.health
puts player2.health
puts player3.health
#player2.name = "lawrence"
puts player2.name

players = [player1, player2, player3]
puts "\nThere are #{players.size} players in the game:"
players.each do |playa|
  puts playa
end
players.each do |playa|
  puts playa.health
end
players.each do |playa|
  playa.blam
  playa.w00t
  playa.w00t
  puts playa
end
players.pop
player4 = Player.new("shemp", 90)
players.push (player4)
players.each do |playa|
  playa.blam
  playa.w00t
  playa.w00t
  puts playa
end