race_total = {}
total_pop = ""
section = ""
site_name = Array.new
site_owner = {}
parent_civ = {}
site_race_total = {}

File.open("/home/david/df/app/dfdata/region2-00005-01-01-world_sites_and_pops.txt").readlines.each do |line|

  line = line.encode('UTF-8', invalid: :replace)

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

  if section == "Sites"
    if /(\d+?):\s(.+?),\s"(.+?)",\s(.+?)\z/.match(line)
      site_name.push(/:\s\b(.+?),/.match(line))
      site_number = /(\d+?):/.match(line)
    elsif /Owner:\s(.+?),\s(.+?)\z/.match(line)
      site_owner.store(site_number, /\s((\w+?)\b+?)/.match(line))
    elsif /Parent\sCiv:\s(.+?)\z/.match(line)
      parent_civ.store(site, /Parent\sCiv:\s(.+?)\z/.match(line))
    elsif
      if /\b(\d+?)\s\b[A-Z]([a-z]+?)\b/.match(line)
        site_race_total.store(/[A-Z](.+?)\b/.match(line), /(\d+?)\b/.match(line))
      end
    end
  end
end

race_total.each { |key, value| puts "#{value} #{key}" }
puts "Total Population: #{total_pop}"

site_owner.each { |key, value| puts "#{key} #{value}" }

