require 'spec_helper'

RSpec.describe Room do
  it 'exists' do
    bathroom = Room.new("bathroom")

    expect(bathroom).to be_instance_of(Room)
  end
  
  it 'has room name' do
    bathroom = Room.new("bathroom")
  
    expect(bathroom.name).to eq('bathroom')
    
  end
end