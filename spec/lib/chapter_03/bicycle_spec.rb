# frozen_string_literal: true

require 'chapter_03/bicycle.rb'

include Chapter03

describe Bicycle do
  subject(:bike) { Bicycle.new(size: 'M', tape_color: 'red') }

  it 'has a size' do
    expect(bike).to have_attributes(size: 'M')
  end

  it "knows it's spares" do
    expect(bike).to have_attributes(spares: { chain: '11-speed', tire_size: '23', tape_color: 'red' })
  end
end
