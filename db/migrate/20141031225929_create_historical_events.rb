class CreateHistoricalEvents < ActiveRecord::Migration
  def change
    create_table :historical_events do |t|
      t.int :historical_event_id
      t.int :year
      t.int :seconds72
      t.string :historical_event_type
      t.int :hfid
      t.string :state
      t.int :site_id
      t.int :subregion_id
      t.int :feature_layer_id
      t.string :coords
      t.int :artifact_id
      t.int :unit_id
      t.int :agreement_id
      t.string :subtype
      t.id :group_1_hfid
      t.int :group_2_hfid
      t.int :civ_id
      t.int :target_hfid
      t.int :snatcher_hfid
      t.int :attacker_civ_id
      t.int :defender_civ_id
      t.int :attacker_general_hfid
      t.int :defender_general_hfid
      t.int :woundee_hfid
      t.int :wounder_hfid
      t.int :slayer_hfid
      t.string :slayer_race
      t.int :slayer_item_id
      t.int :slayer_shooter_item_id
      t.string :cause
      t.int :changee_hfid
      t.int :changer_hfid
      t.string :old_race
      t.string :old_caste
      t.string :new_race
      t.string :new_caste

      t.timestamps null: false
    end
  end
end
