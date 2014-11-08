race_total = {}
total_pop = ""
section = ""


File.open("/home/david/df/app/dfdata/region2-00005-01-01-world_sites_and_pops.txt").readlines.each do |line|

  line = line.encode('UTF-8')

  if !section.nil?
    section = "Totals" if line.chomp == "Civilized World Population"
    section = "Sites" if line.chomp == "Sites"
    section = "Outdoor" if line.chomp == "Outdoor Animal Populations (Including Undead)"
    section = "Underground" if line.chomp == "Outdoor Animal Populations (Including Undead)"
  end

  if section == "Totals"
    if /\b(\d+?)\s\b[A-Z]([a-z]+?)\b/.match(line)
      race_total.store(/[A-Z](.+?)\b/.match(line), /(\d+?)\b/.match(line))
    elsif
      if /\bTotal:\s(\d+?)\b/.match(line)
        total_pop = /(\d+?)\b/.match(line)
      end
    end
  end
end

race_total.each { |key, value| puts "#{value} #{key}" }
puts total_pop

#  if line.match(\(.+?):\s(.+?),\s"(.+?)",\s(.+?)\b\)



