require './lib/player'
require './lib/team'

RSpec.describe Team do

  before(:each) do
    @team = Team.new("France")
    @mbappe = Player.new({name: "Kylian Mbappe", position: "forward"})
    @ogba = Player.new({name: "Paul Pogba", position: "midfielder"})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@team).to be_instance_of(Team)
    end

    it 'has a country' do
      expect(@team.country).to eq('France')
    end

    it 'start out not eliminated' do
      expect(@team.eliminated?).to be false
    end

    it 'can be eliminated' do
      @team.eliminated = true
      expect(@team.eliminated?).to be true
    end

    it 'starts with no players' do
      expect(@team.players).to eq([])
    end

    it 'can add players' do
      @team.add_player(@mbappe)
      @team.add_player(@ogba)

      expect(@team.players).to eq([@mbappe, @ogba])
    end
  end
end