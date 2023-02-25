require 'spec_helper'


RSpec.describe Apartment do
  it 'exists' do
    apt = Apartment.new

    expect(apt).to be_instance_of(Apartment)
  end

  it 'can show if rented' do
    apt = Apartment.new

    expect(apt.is_rented?).to be false
  end

  it 'can rent apartment' do
    apt = Apartment.new

    apt.rent

    expect(apt.is_rented?).to be true
  end

  it 'can add a room' do
    apt = Apartment.new
    bathroom = Room.new('bathroom')

    apt.add_room(bathroom)

    expect(apt.rooms).to eq([bathroom])
  end

  it 'can add multiple rooms' do
    apt = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new('laundry')
    kitchen = Room.new('kitchen')
    bedroom = Room.new('bedroom')

    apt.add_room(bathroom)
    apt.add_room(laundry)
    apt.add_room(kitchen)
    apt.add_room(bedroom)

    expect(apt.rooms).to eq([bathroom, laundry, kitchen, bedroom])
  end

  it 'can list out the rooms in alphabetical order' do
    apt = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new('laundry')
    kitchen = Room.new('kitchen')
    bedroom = Room.new('bedroom')

    apt.add_room(bathroom)
    apt.add_room(laundry)
    apt.add_room(kitchen)
    apt.add_room(bedroom)

    expect(apt.list_rooms_by_name_alphabetically).to eq(['bathroom', 'bedroom', 'kitchen', 'laundry'])
  end
end