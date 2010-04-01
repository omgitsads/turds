module Turds
  # stain generates the shade of the output depending upon its buoyancy
  class Stain
    def self.stain buoyancy
      raise Stain::NotAFloat unless buoyancy.is_a? Float
      brown = Color::RGB.new(107, 85, 67).adjust_brightness((buoyancy * 100).to_i)
      return brown.html
    end
  end
end
