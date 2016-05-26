#describe the bike class

require 'bike'

describe Bike do
	it "checks if bike is working" do
		expect(subject).to respond_to :working?
	end

	it { expect(subject).to respond_to :report_broken }

	it "is reported broken by user" do
		subject.report_broken
		expect(subject.working?).to eq false
	end
end
