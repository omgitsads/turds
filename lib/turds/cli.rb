require 'turds'
require 'optparse'

module Turds
  class Cli
    def self.start(args, out = STDOUT)
      options = { }
      
      OptionParser.new do |opts|
        opts.banner = "Usage: turds [options] file_name"
        opts.separator ""
        opts.separator "Options: "

        # opts.on("-s service", %w(yahoo google geocoder_us metacarta), "--service service", "Geocoding service") do |service|
        #          options[:service] = service
        #        end
        #        
        #        opts.on("-a apikey", "--apikey apikey", "API key for the selected service")
        #        
        #        opts.on_tail("-h", "--help", "Help") do
        #          puts opts
        #          exit
        #        end
      end.parse! args

      options[:location] = args.join(" ")
      
      result = true

      if result
        out << "Turds!"
        exit 0
      else
        out << "No turds =("
        exit 1
      end
    end
  end
end
