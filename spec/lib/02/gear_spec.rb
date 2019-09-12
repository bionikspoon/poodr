# frozen_string_literal: true

require '02/gear.rb'

RSpec.describe Gear do
  describe '#ratio' do
    it 'finds  the ratio' do
      aggregate_failures do
        expect(Gear.new(52, 11, 26, 1.5).ratio).to eq(4.7272727272727275)
        expect(Gear.new(30, 27, 26, 1.5).ratio).to eq(1.1111111111111112)
      end
    end
  end

  describe '#gear_inches' do
    it 'shows the effect of whel size on distance traveled' do
      aggregate_failures do
        expect(Gear.new(52, 11, 26, 1.5).gear_inches).to eq(137.0909090909091)
        expect(Gear.new(52, 11, 24, 1.25).gear_inches).to eq(125.27272727272728)
      end
    end
  end
end
