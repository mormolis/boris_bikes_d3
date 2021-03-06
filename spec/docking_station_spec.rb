require "docking_station"

describe DockingStation do

  # # it "is instantiated with a capacity" do
  #   # expect(subject).to respond_to(:initialize).with(1).argument
  #   expect(DockingStation).to receive(:initialize).with(1)
  # end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    describe 'initialization' do
      subject { DockingStation.new }
      let(:bike) { Bike.new }

      it 'defaults capacity' do
        described_class::DEFAULT_CAPACITY.times do
          subject.dock(bike)
        end
        expect{ subject.dock(bike)}.to raise_error 'Docking Station is full'
      end


      it 'has a variable capacity' do
        docking_station = DockingStation.new(50)
        50.times { docking_station.dock Bike.new}
        expect{ docking_station.dock Bike.new}.to raise_error 'Docking Station is full'
      end



    end

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

    it "raises error when full" do
      subject.capacity.times{subject.dock(Bike.new)}
      expect{subject.dock(Bike.new)}.to raise_error("Docking Station is full")
    end
  end
end
