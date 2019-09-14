# frozen_string_literal: true

require 'chapter_02/gear.rb'

include Chapter02

describe Gear do
  describe '#ratio' do
    it 'finds  the ratio' do
      aggregate_failures do
        expect(Gear.new(52, 11).ratio).to eq(4.7272727272727275)
        expect(Gear.new(30, 27).ratio).to eq(1.1111111111111112)
      end
    end
  end

  describe '#gear_inches' do
    it 'shows the effect of whel size on distance traveled' do
      aggregate_failures do
        expect(Gear.new(52, 11, Wheel.new(26, 1.5)).gear_inches).to eq(137.0909090909091)
        expect(Gear.new(52, 11, Wheel.new(24, 1.25)).gear_inches).to eq(125.27272727272728)
      end
    end
  end
end

describe Wheel do
  describe '#diameter' do
    it 'calculates the diameter' do
      aggregate_failures do
        expect(Wheel.new(26, 1.5).diameter).to eq(29.0)
        expect(Wheel.new(24, 1.25).diameter).to eq(26.5)
      end
    end
  end

  describe '#circumference' do
    it 'calculates the circumference' do
      aggregate_failures do
        expect(Wheel.new(26, 1.5).circumference).to eq(91.106186954104)
        expect(Wheel.new(24, 1.25).circumference).to eq(83.25220532012952)
      end
    end
  end
end
