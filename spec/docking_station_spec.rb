 require 'docking_station'


describe DockingStation do
  it 'needs to release bike' do
    docking_station = DockingStation.new
    expect(docking_station.respond_to?(:release_bike)).to eq true
  end
end
