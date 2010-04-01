module Turds
  module Nugget
    class Reek
      class << self
        def run(path)
          results = `reek #{path} | grep 'warning'`
          results = results.split("\n")
          turds = []
          
          results.each do |line|
            filename, num = line.scan(/(.*) -- ([\d]?)/).flatten
            turds << "#{filename} has #{num} shitty parts!"
          end
          
          return turds.join("\n")
        end
      end
    end
  end
end