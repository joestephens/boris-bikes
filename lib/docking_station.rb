require_relative 'bike'

class DockingStation
  attr_reader :bikes
  
  def initialize
    @bikes = 0
  end

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bikes += 1
    bike
  end
end
