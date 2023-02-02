require './card'
require './deck'
require './turn'
require './round'
require './card_generator'

def start
  cards = CardGenerator.new('cards.txt').cards
  deck = Deck.new(cards)
  round = Round.new(deck)

  p "Welcome! You're playing with #{round.deck.count} cards."
  p '-----------------------------------------------------------'

  while round.turns.length < round.deck.count
  p "This is card number #{round.count} out of #{round.deck.count}."
  p "Question: #{round.current_card.question}"
  guess = gets.chomp.downcase
  round.take_turn(guess)
  p round.turns.last.feedback
  end

  p '********** Game over! **********'
  p "You had #{round.number_correct} correct guesses out of #{round.deck.count} for a total score of #{round.percent_correct.to_i}%."
puts round.percent_correct_by_each_category
end

start