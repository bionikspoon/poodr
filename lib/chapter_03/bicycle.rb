# frozen_string_literal: true

module Chapter03
  class Bicycle
    attr_reader :size, :chain, :tire_size

    def initialize(**opts)
      @size = opts[:size]
      @chain = opts[chain] || default_chain
      @tire_size = opts[chain] || default_tire_size
    end

    def default_chain
      '11-speed'
    end

    def default_tire_size
      '23'
    end

    def spares
      { chain: chain, tire_size: tire_size }
    end
  end

  class RoadBike < Bicycle
    attr_reader  :tape_color

    def initialize(**opts)
      super
      @tape_color = opts[:tape_color]
    end

    def spares
      super.merge(tape_color: tape_color)
    end
  end
  class MountainBike < Bicycle
    attr_reader :front_shock

    def initialize(**opts)
      super
      @front_shock = opts[:front_shock]
    end

    def default_tire_size
      '2.1'
    end

    def spares
      super.merge(tire_size: tire_size, front_shock: front_shock)
    end
  end
end
