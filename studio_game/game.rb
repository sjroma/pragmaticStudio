require_relative 'player'
require_relative 'die'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_playa)
    @players << a_playa
  end
  
  def play
    puts "\nThere are #{@players.size} players in #{@title}:"
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      die = Die.new
      case die.roll
      when 1..2
        player.blam
      when 3..4
        puts "#{player.name} was skipped."
      else 
        player.w00t
      end
      
      puts player
    end
  end
end