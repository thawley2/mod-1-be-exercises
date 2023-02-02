require 'rspec'
require './lib/card_generator'

RSpec.describe CardGenerator do
  describe '#instance' do
    it 'is an instance of CardGenerator' do
      cards = CardGenerator.new("./lib/cards.txt")
      expect(cards).to be_instance_of(CardGenerator)
    end
  end
  describe '#cards' do
    it 'can return an array of card instances' do

      cards = CardGenerator.new("./lib/cards.txt")

      expect(cards.cards.first).to be_instance_of(Card)
    end
  end
end