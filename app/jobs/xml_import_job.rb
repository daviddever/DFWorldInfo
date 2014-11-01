require 'saxerator'

parser = Saxerator.parser(File.new("/home/david/df/app/dfdata/region2-00005-01-01-legends.xml"))

region = parser.within('regions').map { |item| item }

underground_region = parser.within("underground_regions").map { |item| item}

site = parser.within("sites").map { |item| item}

artifact = parser.within("artifacts").map { |item| item}
