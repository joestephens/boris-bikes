require 'docking_station'
require 'bike'


describe DockingStation do
  it 'responds to release bike' do
    expect(subject.respond_to?(:release_bike)).to eq true
  end

  it 'shows bikes' do
    expect(subject.bikes.class).to eq Fixnum
  end

  bike = Bike.new

  it 'releases a working bike' do
    subject.dock(1)
    expect(bike).to be_working
    expect(subject.release_bike.class).to eq Fixnum
  end

  it 'should dock bike' do
    expect(subject.dock(bike)).to eq bike
  end

  it 'doesn\'t release a bike if station empty' do
    expect{subject.release_bike}.to raise_error 'No bikes available!'
  end
end
