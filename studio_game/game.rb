require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'
require 'csv'

class Game
  attr_reader :title
  
  def initialize(title)
    @title = title
    @players = []
  end
  
  def add_player(a_playa)
    @players << a_playa
  end
  
  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end
  
  def print_stats
    strong_players = @players.select {|player| player.strong? }
    wimpy_players = @players.reject {|player| player.strong? }
    
    puts "\n#{title} Stats:"
    
    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end
    
    puts "\n#{wimpy_players.size} wimpy players:"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end
    
    puts "\n#{@title} High Scores:"
    @players.sort.each do |player|
      formatted_name = player.name.ljust(20, '.')
      puts "#{formatted_name} #{player.score}"
    end
    
    @players.sort.each do |player|
      puts "\n#{player.name}'s point totals:"
      player.each_found_treasure do |treasure|
        puts "#{treasure.points} total #{treasure.name} points"
      end
      puts "#{player.points} grand total points"
    end
    
    puts "\n#{total_points} total points from treasures found"
  end
  
  def play(rounds)
    puts "\nThere are #{@players.size} players in #{@title}:"
    @players.each do |player|
      puts player
    end
    
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.size} treasures to be found:"
    
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    
    1.upto(rounds) do |round|
      if block_given?
        break if yield
      end
      puts "\nRound #{round}:"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end
  
  def total_points
    @players.reduce(0) { |sum, player| sum + player.points }
  end
  
  def load_players(from_file)
    CSV.foreach(from_file) do |row|
      player = Player.new(row[0], row[1].to_i)
      add_player(player)
    end
  end
end