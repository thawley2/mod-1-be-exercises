class CardGenerator
  def initialize(file)
    @file = file
  end
end

cards = File.read("./cards.txt")
p cards