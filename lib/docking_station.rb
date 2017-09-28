#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation
  attr_reader :bikes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise ("There are no bikes docked") if empty?
    @bikes.pop
  end

  def dock(bike)
    fail ("Docking Station is full") if full?
    @bikes << bike
    # bike
  end

  private
  def full?
   @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
     @bikes.empty? #@bikes==[]
  end
end
