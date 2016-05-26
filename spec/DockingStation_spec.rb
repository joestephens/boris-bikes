#describe docking station

require 'DockingStation'

describe DockingStation do
	
	let(:bike) {Bike.new}

	describe "initialization" do

		subject{DockingStation.new}

		it "has a default capacity" do
			described_class::DEFAULT_CAPACITY.times {subject.dock(bike)}
			expect {subject.dock(bike)}.to raise_error("This station is full")
		end

		it "accepts a capacity of 25" do
			station = described_class.new(25)
			25.times {station.dock(bike)}
			expect {station.dock(bike)}.to raise_error("This station is full")
		end
	end

	it "responds to release_bike" do
		expect(subject).to respond_to :release_bike
	end

	describe "#release_bike" do

		it "releases a bike" do
			subject.dock(bike)
			expect(subject.release_bike).to be_working
		end

		it "raises an error when there are no bikes" do
			expect {subject.release_bike}.to raise_error("There are no bikes")
		end
	end

	it "responds to dock" do
		expect(subject).to respond_to(:dock).with(1).argument
	end

	describe "#dock" do

		it "docks a bike and returns docked bike" do
			expect(subject.dock(bike)).to eq bike
		end
	end

end
