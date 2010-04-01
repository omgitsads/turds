module Turds
  # stain generates the shade of the output depending upon its buoyancy
  class Wit
    def self.new
      comments = [
        "this turd ain't big enough for the both of us",
        "toilet humor",
        "milk milk lemonade"
      ]
      return comments[rand(comments.size)]
    end
  end
end
