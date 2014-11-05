class CreateHistoricalEventCollections < ActiveRecord::Migration
  def change
    create_table :historical_event_collections do |t|
      t.integer :historical_event_id
      t.integer :start_year
      t.integer :start_seconds72
      t.integer :end_year
      t.integer :end_seconds72
      t.string :event
      t.string :historical_event_type
      t.integer :parent_eventcol
      t.integer :subregion_id
      t.integer :feature_layer_id
      t.integer :site_id
      t.string :coords
      t.integer :defending_enid
      t.integer :ordinal
      t.string :name
      t.integer :aggressor_ent_id
      t.integer :defender_ent_id
      t.integer :war_eventcol
      t.string :attacking_hfids
      t.string :defending_hfids
      t.string :attacking_squad_race
      t.integer :attacking_squad_entity_pop
      t.integer :attacking_squad_number
      t.integer :attacking_squad_deaths
      t.integer :attacking_squad_site
      t.string :defending_squad_race
      t.integer :defending_squad_entity_pop
      t.integer :defending_squad_number
      t.integer :defending_squad_deaths
      t.integer :defending_squad_site
      t.string :outcome

      t.timestamps null: false
    end
  end
end
