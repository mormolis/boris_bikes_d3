require "docking_station"

describe DockingStation do

  describe "#release_bike" do
    context "given the method 'release bike'"
      it 'responds to the method "release_bike"' do
        expect(subject).to respond_to :release_bike
      end

    context "release_bike returns object of type Bike"
      it 'returns object of type Bike' do
        subject.dock_bike(Bike.new)
        expect(subject.release_bike).to be_instance_of Bike
      end

      it "raises an error when the docking station is empty" do
        expect{subject.release_bike}.to raise_error("There are no bikes docked")
      end
  end

  describe "#dock_bike" do
  

    it "receives a bike instance and docks it" do
      expect(subject).to respond_to :dock_bike
    end

    it "the dock_bike method should receive one argument" do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end

    it "the dock_bike method should return the bikes array if successful" do
      expect(subject.dock_bike(Bike.new)).to be_instance_of Bike
    end

    it "raises an exception when you try to dock more bikes than the capacity of docking station" do
      subject.dock_bike(Bike.new)
      expect{subject.dock_bike(Bike.new)}.to raise_error("Docking Station is full")
    end

   

  end

 
 


end
