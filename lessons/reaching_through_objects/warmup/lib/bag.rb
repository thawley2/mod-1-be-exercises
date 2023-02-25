class Bag
  attr_reader :candies
  def initialize
    @candies = []
  end

  def empty?
    @candies.length == 0
  end

  def count
    @candies.length
  end

  def add_candy(candy)
    @candies << candy
  end

  def contains?(candy_type)
    @candies.any? do |candy|
      candy.type == candy_type
    end
  end
end