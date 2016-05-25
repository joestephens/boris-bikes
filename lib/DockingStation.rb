class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
     raise "Bike not available" if empty?
     @bikes.pop
  end

  def dock(bike)
    raise "Dock is full" if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end
