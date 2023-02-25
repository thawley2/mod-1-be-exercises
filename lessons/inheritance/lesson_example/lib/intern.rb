require './lib/employee'

class Intern < Employee
  attr_reader :base_salary
  
  def initialize(base_salary, name, id)
    super(name, id)
    @base_salary = base_salary
  end

  def get_coffee
    "Who got the latte?"
  end

  def benefits
    super.unshift(:gets_to_get_me_coffee)
    # [:gets_to_get_me_coffee]
  end

end