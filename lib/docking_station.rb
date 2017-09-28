#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation
  attr_reader :bikes
 

  def release_bike
    raise ("There are no bikes docked") unless @bikes
    @bikes
  end

  def dock_bike(bike)
    fail ("Docking Station is full") if @bikes
    @bikes = bike
  end

end
