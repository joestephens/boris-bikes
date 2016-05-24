require 'docking_station'
require 'bike'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) } # responds to release_bike
  it { is_expected.to respond_to(:dock).with(1).argument } # responds to dock when passed one argument
  it { is_expected.to respond_to(:bike) } # responds to bike

  it 'docks a bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

end
