require 'rspec'
require './lib/card_generator'

RSpec.describe CardGenerator do
  describe '#instance' do
    it 'is an instance of CardGenerator' do
      cards = CardGenerator.new('./lib/cards.txt')

      expect(cards).to be_instance_of(CardGenerator)
    end
  end
end