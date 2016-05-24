require 'docking_station'
require 'bike'


describe DockingStation do
  it 'needs to release bike' do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end
end

describe Bike do
  it 'needs to be working' do
    bike = Bike.new
    expect(bike.respond_to?(:working?)).to eq true
  end
end
