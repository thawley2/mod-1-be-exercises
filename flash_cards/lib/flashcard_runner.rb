require './card'
require './deck'
require './turn'
require './round'

def start
  card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
  card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
  card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)
  deck = Deck.new([card_1, card_2, card_3])
  round = Round.new(deck)

  p "Welcome! You're playing with #{round.deck.count} cards."
  p '-----------------------------------------------------------'
  while round.turns.length < round.deck.count
  p "This is card number #{round.count} out of #{round.deck.count}."
  p "Question: #{round.current_card.question}"
  guess = gets.chomp
  round.take_turn(guess)
  p round.turns.last.feedback
  end
  p '********** Game over! **********'
  p "You had #{round.number_correct} correct guesses out of #{round.deck.count} for a total score of #{round.percent_correct}%."
  p 
end

start