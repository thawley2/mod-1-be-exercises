class Potluck
  attr_reader :date, :dishes
  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      dish.category == category
    end
  end

  def menu
      menu = Hash.new {|hash, key| hash[key] = []}
      dishes.each do |dish|
        menu["#{dish.category}s"] << dish.name
      end
      new_menu = Hash.new
      menu.map do |key, value|
        new_menu[key.to_sym] = value.sort
      end
      new_menu
    end
end