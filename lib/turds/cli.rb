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

        opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
          options[:verbose] = v
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

      out << Turds::Stain.stain(0.5)

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
