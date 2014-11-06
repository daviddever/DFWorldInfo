race_total = {}

File.open("/home/david/df/app/dfdata/region2-00005-01-01-world_sites_and_pops.txt").readline do |line|

  section = "Totals" if line == "Civilized World Population"

  next if /\s/.match(line)

  if section = "Totals" do
    if line.match(/\s\b(.+?)\b/) do
      race_total = { line.match(/[A-Z](.+?)\b/) => line.match(/\d/) }
    else
      total_pop = line.match(/\d/) if line.match(/\s\bTotal:\s(\d+?)\b/)
    end
  end
end


#  if line.match(\(.+?):\s(.+?),\s"(.+?)",\s(.+?)\b\)



