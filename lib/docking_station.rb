#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise ("There are no bikes docked") if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail ("Docking Station is full") if @bikes.count == 20
    @bikes << bike
    bike
  end

end
