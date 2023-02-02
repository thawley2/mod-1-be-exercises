require './card'
class CardGenerator
attr_reader :filename

  def initialize(filename)
    @filename = filename
  end
  def cards
    cards = IO.readlines(@filename, chomp: true)
    cards.map do |card|
      q = card.split(',')[0]
      a = card.split(',')[1]
      c = card.split(',')[2]
      Card.new(q, a, c)
    end
  end
end


