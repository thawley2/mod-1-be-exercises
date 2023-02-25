class Street
  attr_reader :name
  def initialize(name)
    @name = name
    @buildings = []
  end

  def buildings
    if @buildings.empty?
      'No buildings on street'
    else @buildings.map {|building| building.name}.sort
    end
  end

  def add_building(building)
    @buildings << building
  end

  def number_of_available_apartments
    @buildings.sum do |building|
      building.list_apartments.count do |apartment|
        !apartment.is_rented?
      end
    end
  end

  def list_available_apartments
    #create list of buildings =>
        #create list of apartments in those buildings that are not rented in a nested hash
        #create list of rooms in apartments that are not rented
    apartment_rooms = @buildings.to_h do |building|
      [building.name, building.list_apartments.to_h do |apartment|
        [apartment, apartment.rooms.map {|room| room.name}]
      end]
    end
  end
end