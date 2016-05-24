require 'docking_station'
require 'bike'

describe Bike do
  @bike = Bike.new
  it 'needs to be working' do
    expect(@bike.respond_to?(:working?)).to eq true
  end
end

describe DockingStation do
  it 'needs to release bike' do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end
  it 'receives a working bike' do
    expect(@bike.working?).to eq true
    expect(docking_station.release_bike).to eq @bike
  end
end
