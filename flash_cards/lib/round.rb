class Round
  attr_reader :deck, :turns
  def initialize(deck)
    @deck = deck
    @turns = []
    @number_correct = []
    @number_incorrect = []
  end
  def current_card
    @deck.cards[@turns.length]
  end
  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    current_card.answer == guess ? @number_correct << current_card : @number_incorrect << current_card
    @turns << turn
    turn
  end
  def number_correct
    @number_correct.length
  end
  def number_correct_by_category(category)
    
  end
end