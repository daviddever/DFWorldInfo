require 'saxerator'

parser = Saxerator.parser(File.new("/home/david/df/app/dfdata/region2-00005-01-01-legends.xml"))

unique_spheres = Array.new

# Load information from the main sections in xml into arrays
regions = parser.within('regions').map { |item| item }
underground_regions = parser.within("underground_regions").map { |item| item}
sites = parser.within("sites").map { |item| item }
artifacts = parser.within("artifacts").map { |item| item}
historical_figures = parser.within("historical_figures").map { |item| item }
entity_populations = parser.within("entity_populations").map { |item| item }
entities = parser.within("entities").map { |item| item }
historical_events = parser.within("historical_events").map { |item| item }
historical_event_collections = parser.within("historical_event_collections").map { |item| item }
historical_eras = parser.within("historical_eras").map { |item| item }

# Write the information to the corresponding table in the databse

regions.each do |item|
  t = Region.new
  t.region_id = item["id"]
  t.name = item["name"]
  t.region_type = item["type"]
  t.save
end

underground_regions.each do |item|
  t = UndergroundRegion.new
  t.underground_region_id = item["id"]
  t.underground_region_type = item["type"]
  t.depth = item["depth"]
  t.save
end


sites.each do |item|
  t = Site.new
  t.site_id = item["id"]
  t.site_type = item["type"]
  t.name = item["name"]
  t.coords = item["coords"]
  t.save
end

artifacts.each do |item|
  t = Artifact.new
  t.artifact_id = item["id"]
  t.name = item["name"]
  t.item = item["item"]
  t.save
end

historical_figures.each do |item|
  t = HistoricalFigure.new
  t.figure_id = item["id"]
  t.name = item["name"]
  t.race = item["race"]
  t.caste = item["caste"]
  t.appeared = item["appeared"]
  t.birth_year = item["birth_year"]
  t.birth_seconds72 = item["birth_seconds72"]
  t.death_year = item["death_year"]
  t.death_seconds72 = item["death_seconds72"]
  t.associated_type = item["associated_type"]
  t.hf_link = item["hf_link"]
  t.entity_link = item["entity_link"]
  t.entity_position_link = item["entity_position_link"]
  t.site_link = item["site_link"]
  t.hf_skill = item["hf_skill"]
  t.ent_pop_link = item["ent_pop_link"]
  (item['sphere'].presence || []).each do |sphere|
    if sphere.present?
      t.spheres << Sphere.where(name: sphere).first_or_create
    end
  end
  t.save
end

historical_figures.each do |hf|
  (hf['sphere'].presence || []).each do |sphere|
    if sphere.present?
      hf.sphere << Sphere.where(name: sphere).first_or_create
    end
  end
end


entity_populations.each do |item|
  t = EntityPopulation.new
  t.entity_population_id = item["id"]
  t.save
end

entities.each do |item|
  t = Entity.new
  t.entity_id = item["id"]
  t.name = item["name"]
  t.save
end

historical_events.each do |item|
  t = HistoricalEvent.new
  t.historical_event_id = item["id"]
  t.year = item["year"]
  t.seconds72 = item["seconds72"]
  t.historical_event_type = item["type"]
  t.hfid = item["hfid"]
  t.state = item["state"]
  t.site_id = item["site_id"]
  t.subregion_id = item["subregion_id"]
  t.feature_layer_id = item["feature_layer_id"]
  t.coords = item["coords"]
  t.artifact_id = item["artifact_id"]
  t.unit_id = item["unit_id"]
  t.agreement_id = item["agreement_id"]
  t.subtype = item["subtype"]
  t.group_1_hfid = item["group_1_hfid"]
  t.group_2_hfid = item["group_2_hifd"]
  t.civ_id = item["civ_id"]
  t.target_hfid = item["target_hfid"]
  t.snatcher_hfid = item["snatcher_hfid"]
  t.attacker_civ_id = item["attacker_civ_id"]
  t.defender_civ_id = item["defender_civ_id"]
  t.attacker_general_hfid = item["attacker_general_hfid"]
  t.defender_general_hfid = item["defender_general_hfid"]
  t.woundee_hfid = item["woundee_hfid"]
  t.wounder_hfid = item["wounder_hfid"]
  t.slayer_hfid = item["slayer_hfid"]
  t.slayer_race = item["slayer_race"]
  t.slayer_item_id = item["slayer_item_id"]
  t.slayer_shooter_item_id = item["slayer_shooter_item_id"]
  t.cause = item["cause"]
  t.changee_hfid = item["changee_hfid"]
  t.changer_hfid = item["changer_hfid"]
  t.old_race = item["old_race"]
  t.old_caste = item["old_caste"]
  t.new_race = item["new_race"]
  t.new_caste = item["new_caste"]
  t.save
end

historical_event_collections.each do |item|
  t = HistoricalEventCollection.new
  t.historical_event_id = item["id"]
  t.start_year = item["start_year"]
  t.start_seconds72 = item["start_seconds72"]
  t.end_year = item["end_year"]
  t.end_seconds72 = item["end_seconds72"]
  t.event = item["event"]
  t.historical_event_type = item["type"]
  t.parent_eventcol = item["parent_eventcol"]
  t.subregion_id = item["subregion_id"]
  t.feature_layer_id = item["feature_layer_id"]
  t.site_id = item["site_id"]
  t.coords = item["coords"]
  t.defending_enid = item["defending_enid"]
  t.ordinal = item["ordinal"]
  t.name = item["name"]
  t.aggressor_ent_id = item["aggessor_id"]
  t.defender_ent_id = item["defender_ent_id"]
  t.war_eventcol = item["war_eventcol"]
  t.attacking_hfids = item["attacking_hfid"]
  t.defending_hfids = item["defending_hfid"]
  t.attacking_squad_race = item["attacking_squad_race"]
  t.attacking_squad_entity_pop = item["attacking_squad_entity_pop"]
  t.attacking_squad_number = item["attacking_squad_number"]
  t.attacking_squad_deaths = item["attacking_squad_deaths"]
  t.attacking_squad_site = item["attacking_squad_site"]
  t.defending_squad_race = item["defending_squad_race"]
  t.defending_squad_entity_pop = ["defending_squad_entity_pop"]
  t.defending_squad_number = ["defending_squad_number"]
  t.defending_squad_deaths = ["defending_squad_deaths"]
  t.defending_squad_site = ["defending_squad_site"]
  t.outcome = item["outcome"]
  t.save
end

historical_eras.each do |item|
  t = HistoricalEra.new
  t.name = item["name"]
  t.start_year = ["start_year"]
  t.save
end

