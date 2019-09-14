# frozen_string_literal: true

require 'chapter_07/bicycle.rb'

include Chapter07

describe Bicycle do
  describe RoadBike do
    subject(:bike) { RoadBike.new(size: 'M', tape_color: 'red') }

    it 'has a size' do
      expect(bike).to have_attributes(size: 'M')
    end

    it "knows it's spares" do
      expect(bike).to have_attributes(spares: { chain: '11-speed', tire_size: '23', tape_color: 'red' })
    end
  end

  describe MountainBike do
    subject(:bike) { MountainBike.new(size: 'S', front_shock: 'Manitou', rear_shock: 'Fox') }

    it 'has a size' do
      expect(bike).to have_attributes(size: 'S')
    end

    it "knows it's spares" do
      expect(bike).to have_attributes(spares: { chain: '11-speed', tire_size: '2.1', front_shock: 'Manitou' })
    end
  end

  describe RecumbentBike do
    subject(:bike) { RecumbentBike.new(size: 'L', flag: 'tall and orange') }

    it 'has a size' do
      expect(bike).to have_attributes(size: 'L')
    end

    it "knows it's spares" do
      expect(bike).to have_attributes(spares: { chain: '10-speed', tire_size: '28', flag: 'tall and orange' })
    end
  end
end
