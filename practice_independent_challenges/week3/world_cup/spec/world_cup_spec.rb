require './lib/world_cup'
require './lib/team'
require './lib/player'

RSpec.describe WorldCup do

before(:each) do
  @france = Team.new("France")
  @croatia = Team.new("Croatia")

  @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
  @ogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  @modric = Player.new({name: "Luka Modric", position: "midfielder"})
  @vida = Player.new({name: "Domagoj Vida", position: "defender"})

  @france.add_player(@mbappe)
  @france.add_player(@ogba)
  @croatia.add_player(@modric)
  @croatia.add_player(@vida)


  @world_cup = WorldCup.new(2018, [@france, @croatia])
end

  describe '#initialize' do
    it 'exists' do
      expect(@world_cup).to be_instance_of(WorldCup)
    end

    it 'has a year' do
      expect(@world_cup.year).to eq(2018)
    end

    it 'has teams' do
      expect(@world_cup.teams).to eq([@france, @croatia])
    end

    it 'can find active players by position' do
      expect(@world_cup.active_players_by_position('midfielder')).to eq([@ogba, @modric])
      @croatia.eliminated = true
      expect(@world_cup.active_players_by_position('midfielder')).to eq([@ogba])
    end
  end
end