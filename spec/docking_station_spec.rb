require "docking_station"

describe DockingStation do

  describe "#release_bike" do
    context "given the method 'release bike'"
      it 'responds to the method "release_bike"' do
        expect(subject).to respond_to :release_bike
      end

    context "release_bike returns object of type Bike"
      it 'returns object of type Bike' do
        expect(subject.release_bike).to be_instance_of Bike
      end



  end

  describe "#dock_bike" do
    ds = DockingStation.new
    bike = Bike.new

    it "receives a bike instance and docks it" do
      expect(subject).to respond_to :dock_bike
    end

    it "the dock_bike method should receive one argument" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it "the dock_bike method should return the bikes array if successful" do
      expect(ds.dock_bike(bike)).to be_instance_of Array
    end

    it "the dock_bike method should have populated the bikes array" do
      expect(ds.bikes.count).to eq(1)
    end
  end

  describe ".bikes" do
    it "returns an array with all the docked bikes" do
      expect(subject.bikes).to be_instance_of Array
    end
  end


end
