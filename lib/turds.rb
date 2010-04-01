module Turds
  class << self
    def application
      @application ||= Turds::Application.new
    end
  end

  class Application
    def run
      puts "Turds!"
    end
  end
end