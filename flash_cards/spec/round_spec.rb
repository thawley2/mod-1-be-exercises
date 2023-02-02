require './lib/round'
require './lib/turn'
require './lib/card'
require './lib/deck'

RSpec.describe Round do
  it 'exist' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    expect(round).to be_instance_of(Round)
  end

  it 'can call on the deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    expect(round.deck).to eq(deck)
  end

  it 'can dispaly turns' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    expect(round.turns).to eq([])
  end

  it 'can display first card in deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    expect(round.current_card).to eq(card_1)
  end

  it 'can take a turn' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn('Juneau')
    expect(new_turn.class).to eq(Turn)
    expect(new_turn.correct?).to be true
  end

  it 'can take another turn' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn('Juneau')
    round.take_turn('Venus')
    expect(round.turns.count).to eq(2)
    expect(round.turns.last.feedback).to eq('Incorrect :(')
  end

  it 'can return number of correct answers' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn('Juneau')
    round.take_turn('Venus')
    expect(round.number_correct).to eq(1)
  end

  it 'can return the number of correct answers by category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn('Juneau')
    round.take_turn('Venus')
    expect(round.number_correct_by_category(:Geography)).to eq(1)
    expect(round.number_correct_by_category(:STEM)).to eq(0)
  end
  it 'can return the percent correct and the percent correct by category' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn('Juneau')
    round.take_turn('Venus')

    expect(round.percent_correct).to eq(50)
    expect(round.percent_correct_by_category(:Geography)).to eq(100)
  end
  it 'can return the next card in the deck' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    new_turn = round.take_turn('Juneau')
    round.take_turn('Venus')
    expect(round.current_card).to eq(card_3)
  end
  describe '#select_all_categories_in_round' do
  it 'can pull all categories from the round' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)

    expect(round.select_all_categories_in_round).to eq([:Geography, :STEM])
  end
end
describe '#percent_correct_by_each_category' do
  it 'can return a list of all categories in a round with the percent correct' do
    card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
    deck = Deck.new([card_1, card_2, card_3])
    round = Round.new(deck)
    round.take_turn('Juneau')
    round.take_turn('Mars')
    round.take_turn('North')

    expect(round.percent_correct_by_each_category).to eq(['Geography - 100.0% correct', 'STEM - 50.0% correct'])
  end
end
end