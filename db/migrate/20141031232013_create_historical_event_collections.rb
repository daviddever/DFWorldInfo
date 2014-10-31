class CreateHistoricalEventCollections < ActiveRecord::Migration
  def change
    create_table :historical_event_collections do |t|
      t.int :historical_event_id
      t.int :start_year
      t.int :start_seconds72
      t.int :end_year
      t.int :end_seconds72
      t.string :event
      t.string :historical_event_type
      t.int :parent_eventcol
      t.int :subregion_id
      t.int :feature_layer_id
      t.int :site_id
      t.string :coords
      t.int :defnding_enid
      t.int :ordinal
      t.string :name
      t.int :agressor_ent_id
      t.int :defender_ent_id
      t.int :war_eventcol
      t.string :attacking_hfids
      t.string :defending_hfids
      t.string :attacking_squad_race
      t.int :attacking_squad_entity_pop
      t.int :attacking_squad_number
      t.string :attackig_squads
      t.string :defending_squads
      t.string :outcome

      t.timestamps null: false
    end
  end
end
