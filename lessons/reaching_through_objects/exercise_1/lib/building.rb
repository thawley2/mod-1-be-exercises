class Building
  attr_reader :number, :name

  def initialize(number, name)
    @number = number
    @name = name
    @apartments = []
  end

  def list_apartments
    @apartments
  end

  def add_apartment(apartment)
    if @apartments.count < 4
      @apartments << apartment
    end
  end
end