# frozen_string_literal: true

class Gear
  def initialize(chainring, cog)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end

  private

  attr_reader :chainring, :cog
end
