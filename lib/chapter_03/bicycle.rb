# frozen_string_literal: true

module Chapter03
  class Bicycle
    attr_reader :size, :tape_color
    def initialize(**opts)
      @size = opts[:size]
      @tape_color = opts[:tape_color]
    end

    def spares
      { chain: '11-speed', tire_size: '23', tape_color: tape_color }
    end
  end
end
