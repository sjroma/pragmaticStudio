require_relative 'player'
require_relative 'game'

player1 = Player.new("moe")
player2 = Player.new("larry", 60)
player3 = Player.new("curly", 125)

knuckleheads = Game.new("Knuckleheads")
knuckleheads.add_player(player1)
knuckleheads.add_player(player2)
knuckleheads.add_player(player3)
knuckleheads.play(5)
knuckleheads.print_stats

#player4 = Player.new("janet")
#player5 = Player.new("jack", 60)
#player6 = Player.new("chrissy", 125)

#company = Game.new("Roommates")
#company.add_player(player4)
#company.add_player(player5)
#company.add_player(player6)
#company.play(5)
#company.print_stats