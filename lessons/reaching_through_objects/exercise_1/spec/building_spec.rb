require 'spec_helper'

RSpec.describe Building do
  it 'exists' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg).to be_instance_of(Building)
  end

  it 'has a name and number' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg.number).to eq('623')
    expect(bldg.name).to eq('Savills Apartment Building')
  end
  it 'starts with 0 apartments' do
    bldg = Building.new("623", "Savills Apartment Building")

    expect(bldg.list_apartments).to eq([])
  end

  it 'can add apartments to a building' do
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new

    bldg.add_apartment(apt_1)

    expect(bldg.list_apartments).to eq([apt_1])
  end

  it 'can add multiple apartments' do
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new

    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_3)

    expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_3])
  end

  it 'can only hold a max of 4 apartments per building' do
    bldg = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    apt_5 = Apartment.new

    bldg.add_apartment(apt_1)
    bldg.add_apartment(apt_2)
    bldg.add_apartment(apt_3)
    bldg.add_apartment(apt_4)
    bldg.add_apartment(apt_5)

    expect(bldg.list_apartments).to eq([apt_1, apt_2, apt_3, apt_4])
  end
end