require './lib/room'

RSpec.describe Room do
  it 'exists' do
    bathroom = Room.new("bathroom")

    expect(bathroom).to be_instance_of(Room)
  end
end