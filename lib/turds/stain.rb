module Turds
  class Stain
    # this will generate the shade for the output depending upon its buoyancy
    def self.stain buoyancy
      raise Stain::NotAFloat unless buoyancy.is_a? Float
      brown = Color::RGB.new(0xa5, 0x2a, 0x2a).adjust_brightness((buoyancy * 100).to_i)
      return brown.inspect
    end
  end
end
