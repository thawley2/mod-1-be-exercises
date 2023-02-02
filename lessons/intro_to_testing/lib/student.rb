class Student
  attr_reader :name, :cookies 

  def initialize(name)
    @name = name
    @cookies = []
  end
end