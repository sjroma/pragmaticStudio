require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

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
      GameTurn.take_turn(player)
      puts player
    end
  end
end