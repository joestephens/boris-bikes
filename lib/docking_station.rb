require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = 0
  end

  def release_bike
    raise "No bikes available!" unless @bikes > 0
    @bikes -= 1
  end

  def dock(bike)
    @bikes += 1
    bike
  end
end
