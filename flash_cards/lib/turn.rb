class Turn 
  attr_reader :card
  def initialize(string, card)
    @string = string
    @card = card
  end
  def guess
    @string
  end
  def correct?
    @string == card.answer
  end
  def feedback
    correct? ? 'Correct!' : 'Incorrect :('
  end
end