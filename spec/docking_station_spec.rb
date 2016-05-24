require 'docking_station'
require 'bike'


describe DockingStation do

  bike = Bike.new
  it 'needs to be working' do
    expect(bike.respond_to?(:working?)).to eq true
  end

  it 'needs to release bike' do
    expect(subject.respond_to?(:release_bike)).to eq true
  end

  it 'receives a working bike' do
    expect(bike).to be_working
    expect(subject.release_bike.class).to eq Bike
  end
end
