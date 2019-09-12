# frozen_string_literal: true

require '02/gear.rb'

RSpec.describe Gear do
  it 'finds  the ratio' do
    expect(Gear.new(52, 11).ratio).to eq(4.7272727272727275)
  end
  it 'finds  the ratio' do
    expect(Gear.new(30, 27).ratio).to eq(1.1111111111111112)
  end
end
