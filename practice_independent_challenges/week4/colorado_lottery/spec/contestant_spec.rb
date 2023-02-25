require 'rspec'
require './lib/contestant'

RSpec.describe Contestant do
  before(:each) do
    @alexander = Contestant.new({first_name: 'Alexander',
      last_name: 'Aigiades',
      age: 28,
      state_of_residence: 'CO',
      spending_money: 10})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@alexander).to be_a(Contestant)
    end

    it '#full_name' do
      expect(@alexander.full_name).to eq('Alexander Aigiades')
    end

    it '#age' do
      expect(@alexander.age).to eq(28)
    end

    it '#state_of_residence' do
      expect(@alexander.state_of_residence).to eq('CO')
    end

    it '#spending_money' do
      expect(@alexander.spending_money).to eq(10)
    end

    it '#game_interests' do
      expect(@alexander.game_interests).to eq([])
    end

    it '#out_of_state?' do
      expect(@alexander.out_of_state?).to be false
    end

    it 'can add game interests' do
      @alexander.add_game_interest('Mega Millions')
      @alexander.add_game_interest('Pick 4')

      expect(@alexander.game_interests).to eq(["Mega Millions", "Pick 4"])
    end
  end
end
