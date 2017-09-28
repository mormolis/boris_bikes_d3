#require_relative "./bike"
require File.dirname(__FILE__) + "/bike"

class DockingStation
  attr_accessor :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    raise ("There are no bikes docked") if empty?
    bikes.pop
  end

  def dock(bike)
    fail ("Docking Station is full") if full?
    bikes << bike
    # bike
  end

  private

  attr_reader :bikes

  def full?
   bikes.count >= capacity
  end

  def empty?
     bikes.empty? #@bikes==[]
  end
end
