require 'rspec'
require './lib/dish'


RSpec.describe Dish do
  describe 'Instance of' do
    it 'is an instance of Dish' do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish).to be_instance_of(Dish)
    end
  end

  describe '#name' do
    it 'has a dish name' do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish.name).to eq("Couscous Salad")
    end
  end

  describe '#category' do
    it 'has a category' do
      dish = Dish.new("Couscous Salad", :appetizer)

      expect(dish.category).to eq(:appetizer)
    end
  end
end