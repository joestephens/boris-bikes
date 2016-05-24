require 'docking_station'
require 'bike'

describe Bike do
  bike = Bike.new
  it 'needs to be working' do
    expect(bike.respond_to?(:working?)).to eq true
  end
end

describe DockingStation do
  it 'needs to release bike' do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end
  it 'receives a working bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    expect(bike).to be_working
    expect(docking_station.release_bike.class).to eq Bike
  end
end
