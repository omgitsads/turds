require 'turds'
require 'optparse'

module Turds
  # cli is the command line interface for turds
  class Cli
    def self.start(args, out = STDOUT)
      options = { }

      OptionParser.new do |opts|
        opts.banner = "Usage: turds [options] file_name"
        opts.separator ""
        opts.separator "Options: "

        opts.on("-v", "--[no-]verbose", "Run verbosely") do |verbose|
          options[:verbose] = verbose
        end
        
        opts.on("-n", "--nugget", "Choose nugget") do |nugget|
          options[:nugget] = nugget
        end

        opts.on_tail("-h", "--help", "Help") do
          puts opts
          exit
        end
      end.parse! args

      options[:args] = args.join(" ")

      out << Turds::Stain.stain(rand(100).to_f / 100) + "\n"
      out << Turds::Wit.new
      result = true

      if result
        out << "Turds!\n"
        exit 0
      else
        out << "No turds =(\n"
        exit 1
      end
    end
  end
end
