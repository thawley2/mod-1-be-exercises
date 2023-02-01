require './lib/turn'
require './lib/card'
require './lib/deck'

RSpec.describe Turn do
  it 'exists' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new('Juneau', card)
    expect(turn).to be_instance_of(Turn)
  end
  it 'can return a card' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new('Juneau', card)
    expect(turn.card).to be(card)
  end
  it 'can return your guess' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new('Juneau', card)
    expect(turn.guess).to eq('Juneau')
  end
  it 'can tell you if your guess is correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new('Juneau', card)
    expect(turn.correct?).to be true
  end
  it 'can give you feedback if correct' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new('Juneau', card)
    expect(turn.feedback).to eq('Correct!')
  end
  it 'can give you feedback if incorrect' do
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new('North Pole', card)
    expect(turn.feedback).to eq('Incorrect :(')
  end
end