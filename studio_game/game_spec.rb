require_relative 'spec_helper'
require_relative 'game'
require_relative 'die'

describe "Game" do
  
  before do
    $stdout = StringIO.new
    @game = Game.new("Knuckleheads")
    @initial_health = 100
    @player = Player.new("moe", @initial_health)
    @game.add_player(@player)
  end
  
  it 'w00ts the player if a high number is rolled' do
    allow_any_instance_of(Die).to receive(:roll).and_return(5)
    
    @game.play(2)
    
    expect(@player.health).to eq(@initial_health + (15 * 2))
  end
  
  it 'ignores the player when a medium number is rolled' do
    allow_any_instance_of(Die).to receive(:roll).and_return(3)
    
    @game.play(2)
    
    expect(@player.health).to eq(@initial_health)
  end
  
  it 'blams the player if a low number is rolled' do
    allow_any_instance_of(Die).to receive(:roll).and_return(1)
    
    @game.play(2)
    
    expect(@player.health).to eq(@initial_health - (10 * 2))
  end
  
end