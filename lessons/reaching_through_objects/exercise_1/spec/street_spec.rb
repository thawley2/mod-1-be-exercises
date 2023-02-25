require 'spec_helper'

RSpec.describe Street do
  before(:each) do
    @st = Street.new('Adlington Road')
    @zebra = Building.new('123', 'Zebra Apartments')
    @savills = Building.new("623", "Savills Apartment Building")
    apt_1 = Apartment.new
    apt_2 = Apartment.new
    apt_3 = Apartment.new
    apt_4 = Apartment.new
    bathroom = Room.new("bathroom")
    laundry = Room.new('laundry')
    kitchen = Room.new('kitchen')
    bedroom = Room.new('bedroom')
    apt_1.add_room(bathroom)
    apt_2.add_room(laundry)
    apt_3.add_room(kitchen)
    apt_4.add_room(bedroom)

    @savills.add_apartment(apt_1)
    @savills.add_apartment(apt_2)
    @zebra.add_apartment(apt_3)
    @zebra.add_apartment(apt_4)


  end

  it 'exists' do
    expect(@st).to be_instance_of(Street)
  end

  it 'has a name' do
   expect(@st.name).to eq('Adlington Road')
  end

  it 'starts off with 0 buildings' do
    expect(@st.buildings).to eq('No buildings on street')
  end

  it 'can add buildings to the street' do
    @st.add_building(@savills)
    
    expect(@st.buildings).to eq(['Savills Apartment Building'])
  end

  it 'can add multiple buildings and sort them alphabetically' do    
    @st.add_building(@zebra)
    @st.add_building(@savills)

    expect(@st.buildings).to eq(['Savills Apartment Building', 'Zebra Apartments'])
  end

  it 'can state the number of Apartments that are not rented' do
    @st.add_building(@zebra)
    @st.add_building(@savills)

    expect(@st.number_of_available_apartments).to eq(4)
  end

  it 'can list the names of the buildings that have available apartments and the names of the rooms that each apartment has' do
    @st.add_building(@zebra)
    @st.add_building(@savills)

    expect(@st.list_available_apartments).to eq(2)
  end
end