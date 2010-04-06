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
            if num.to_i == 0
              turds << "#{filename} has no skidmarks!"
            elsif num.to_i == 1
              turds << "#{filename} has #{num} shitty part!"
            else
              turds << "#{filename} has #{num} shitty parts!"
            end
          end
          
          return turds.join("\n")
        end
      end
    end
  end
end