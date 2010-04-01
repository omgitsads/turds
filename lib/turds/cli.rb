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
      
      options[:nugget] = "reek" if options[:nugget].nil?
      
      out << Turds::Nugget::Reek.run(options[:args])
      out << "\n"
    end
  end
end
