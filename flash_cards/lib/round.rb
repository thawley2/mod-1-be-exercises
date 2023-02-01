class Round
  attr_reader :deck, :turns, :count
  def initialize(deck)
    @deck = deck
    @turns = []
    @count = 1
  end
  def current_card
    @deck.cards[@count - 1]
  end

  def take_turn(guess)
    turn = Turn.new(guess, current_card)
    @turns << turn
    @count += 1
    @turns.last
  end

  def number_correct
    @turns.select {|turn| turn.card.answer == turn.guess}.length
  end

  def number_correct_by_category(category)
    @turns.count do |turn|
      turn.card.answer == turn.guess && turn.card.category == category
    end
  end

  def percent_correct
    number_correct.fdiv(@turns.length) * 100
  end

  def percent_correct_by_category(category)
    number_correct_by_category(category).fdiv(@turns.count {|turn| turn.card.category == category}) * 100
  end
  
  def number_of_turns_by_category(category)
    @turns.select {|turn| turn.card.category == category}.length
  end
end