require "docking_station"

describe DockingStation do

  describe "#release_bike" do
    context "given the method 'release bike'"
      it 'responds to the method "release_bike"' do
        expect(subject).to respond_to :release_bike
      end

    context "release_bike returns object of type Bike"
      it 'returns object of type Bike' do
        subject.dock(Bike.new)
        expect(subject.release_bike).to be_instance_of Bike
      end

      it "raises an error when the docking station is empty" do
        expect{subject.release_bike}.to raise_error("There are no bikes docked")
      end

      it "docking stations to have an empty array to store bikes" do
        expect(subject.bikes).to eq []
      end

  end

  describe "#dock" do
    it "receives a bike instance and docks it" do
      expect(subject).to respond_to :dock
    end

    it "the dock method should receive one argument" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "the dock method should return the bikes array if successful" do
      expect(subject.dock(Bike.new)).to be_instance_of Array
    end

    it "raises an exception when you try to dock more bikes than the capacity of docking station" do
      DockingStation::DEFAULT_CAPACITY.times{subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error("Docking Station is full")
    end
  end
end
