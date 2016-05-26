require './lib/DockingStation'
require './lib/bike'

station = DockingStation.new
bike = Bike.new
bike.report_broken
station.dock(bike)
station.release_bike.working?
