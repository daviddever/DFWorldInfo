race_total = {}

File.open("/home/david/df/app/dfdata/region2-00005-01-01-world_sites_and_pops.txt").readlines.each do |line|

  section = "Totals" if line == "Civilized World Population"

  if section == "Totals"
    if line.match(/\s\b(.+?)\b/)
      race_total = { line.match(/[A-Z](.+?)\b/) => line.match(/\d/) }
    elsif
      if line.match(/\s\bTotal:\s(\d+?)\b/)
        total_pop = line.match(/\d/)
      end
    end
  end
end


#  if line.match(\(.+?):\s(.+?),\s"(.+?)",\s(.+?)\b\)



