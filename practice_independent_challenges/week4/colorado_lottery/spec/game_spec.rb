require 'rspec'
require './lib/game'

RSpec.describe Game do
  before(:each) do
    @mega_millions = Game.new('Mega Millions', 5, true)
    @pick_4 = Game.new('Pick 4', 2)
  end
  describe '#initialize' do
    it 'exists' do
      expect(@mega_millions).to be_instance_of(Game)
    end

    it 'has a name' do
      expect(@mega_millions.name).to eq('Mega Millions')
    end

    it 'has a cost' do
      expect(@mega_millions.cost).to eq(5)
    end

    it 'has a national drawing' do
      expect(@mega_millions.national_drawing?).to be true
    end

    it 'has a default national_drawing of false' do
      expect(@pick_4.national_drawing?).to be false
    end
  end
end