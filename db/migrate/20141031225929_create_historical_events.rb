class CreateHistoricalEvents < ActiveRecord::Migration
  def change
    create_table :historical_events do |t|
      t.integer :historical_event_id
      t.integer :year
      t.integer :seconds72
      t.string :historical_event_type
      t.integer :hfid
      t.string :state
      t.integer :site_id
      t.integer :subregion_id
      t.integer :feature_layer_id
      t.string :coords
      t.integer :artifact_id
      t.integer :unit_id
      t.integer :agreement_id
      t.string :subtype
      t.integer :group_1_hfid
      t.integer :group_2_hfid
      t.integer :civ_id
      t.integer :target_hfid
      t.integer :snatcher_hfid
      t.integer :attacker_civ_id
      t.integer :defender_civ_id
      t.integer :attacker_general_hfid
      t.integer :defender_general_hfid
      t.integer :woundee_hfid
      t.integer :wounder_hfid
      t.integer :slayer_hfid
      t.string :slayer_race
      t.integer :slayer_item_id
      t.integer :slayer_shooter_item_id
      t.string :cause
      t.integer :changee_hfid
      t.integer :changer_hfid
      t.string :old_race
      t.string :old_caste
      t.string :new_race
      t.string :new_caste

      t.timestamps null: false
    end
  end
end
