# frozen_string_literal: true

module Chapter06
  class Bicycle
    attr_reader :size, :chain, :tire_size

    def initialize(**opts)
      @size = opts[:size]
      @chain = opts[:chain] || default_chain
      @tire_size = opts[:chain] || default_tire_size

      post_initialize(**opts)
    end

    def default_chain
      '11-speed'
    end

    def default_tire_size
      raise NotImplementedError, "#{self.class} must implement 'default_tire_size'"
    end

    def post_initialize(**opts); end

    def spares
      { chain: chain, tire_size: tire_size }.merge(local_spares)
    end

    def local_spares
      {}
    end
  end

  class RoadBike < Bicycle
    attr_reader  :tape_color

    def post_initialize(**opts)
      @tape_color = opts[:tape_color]
    end

    def default_tire_size
      '23'
    end

    def local_spares
      { tape_color: tape_color }
    end
  end

  class MountainBike < Bicycle
    attr_reader :front_shock

    def post_initialize(**opts)
      @front_shock = opts[:front_shock]
    end

    def default_tire_size
      '2.1'
    end

    def local_spares
      { front_shock: front_shock }
    end
  end

  class RecumbentBike < Bicycle
    attr_reader :flag

    def post_initialize(**opts)
      @flag = opts[:flag]
    end

    def default_chain
      '10-speed'
    end

    def default_tire_size
      '28'
    end

    def local_spares
      { flag: flag }
    end
  end
end
