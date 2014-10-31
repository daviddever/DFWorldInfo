require 'saxerator'

parser = Saxerator.parser(File.new("/home/david/df/app/dfdata/region2-00005-01-01-legends.xml"))

puts parser.within('region').map.first { |item| item }

  
