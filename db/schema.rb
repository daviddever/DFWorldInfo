# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141031232205) do

  create_table "artifacts", force: true do |t|
    t.integer  "artifact_id"
    t.string   "name"
    t.string   "item"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "entities", force: true do |t|
    t.integer  "entity_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entity_populations", force: true do |t|
    t.integer  "entity_population_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "historical_eras", force: true do |t|
    t.string   "name"
    t.integer  "start_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "historical_event_collections", force: true do |t|
    t.integer  "historical_event_id"
    t.integer  "start_year"
    t.integer  "start_seconds72"
    t.integer  "end_year"
    t.integer  "end_seconds72"
    t.string   "event"
    t.string   "historical_event_type"
    t.integer  "parent_eventcol"
    t.integer  "subregion_id"
    t.integer  "feature_layer_id"
    t.integer  "site_id"
    t.string   "coords"
    t.integer  "defending_enid"
    t.integer  "ordinal"
    t.string   "name"
    t.integer  "aggressor_ent_id"
    t.integer  "defender_ent_id"
    t.integer  "war_eventcol"
    t.string   "attacking_hfids"
    t.string   "defending_hfids"
    t.string   "attacking_squad_race"
    t.integer  "attacking_squad_entity_pop"
    t.integer  "attacking_squad_number"
    t.integer  "attacking_squad_deaths"
    t.integer  "attacking_squad_site"
    t.string   "defending_squad_race"
    t.integer  "defending_squad_entity_pop"
    t.integer  "defending_squad_number"
    t.integer  "defending_squad_deaths"
    t.integer  "defending_squad_site"
    t.string   "outcome"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "historical_events", force: true do |t|
    t.integer  "historical_event_id"
    t.integer  "year"
    t.integer  "seconds72"
    t.string   "historical_event_type"
    t.integer  "hfid"
    t.string   "state"
    t.integer  "site_id"
    t.integer  "subregion_id"
    t.integer  "feature_layer_id"
    t.string   "coords"
    t.integer  "artifact_id"
    t.integer  "unit_id"
    t.integer  "agreement_id"
    t.string   "subtype"
    t.integer  "group_1_hfid"
    t.integer  "group_2_hfid"
    t.integer  "civ_id"
    t.integer  "target_hfid"
    t.integer  "snatcher_hfid"
    t.integer  "attacker_civ_id"
    t.integer  "defender_civ_id"
    t.integer  "attacker_general_hfid"
    t.integer  "defender_general_hfid"
    t.integer  "woundee_hfid"
    t.integer  "wounder_hfid"
    t.integer  "slayer_hfid"
    t.string   "slayer_race"
    t.integer  "slayer_item_id"
    t.integer  "slayer_shooter_item_id"
    t.string   "cause"
    t.integer  "changee_hfid"
    t.integer  "changer_hfid"
    t.string   "old_race"
    t.string   "old_caste"
    t.string   "new_race"
    t.string   "new_caste"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "historical_figures", force: true do |t|
    t.integer  "figure_id"
    t.string   "name"
    t.string   "race"
    t.string   "caste"
    t.integer  "appeared"
    t.integer  "birth_year"
    t.integer  "birth_seconds72"
    t.integer  "death_year"
    t.integer  "death_seconds72"
    t.string   "associated_type"
    t.text     "sphere"
    t.text     "hf_link"
    t.text     "entity_link"
    t.string   "entity_position_link"
    t.integer  "site_link"
    t.text     "hf_skill"
    t.integer  "ent_pop_link"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "regions", force: true do |t|
    t.integer  "region_id"
    t.string   "name"
    t.string   "region_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "sites", force: true do |t|
    t.integer  "site_id"
    t.string   "site_type"
    t.string   "name"
    t.string   "coords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "underground_regions", force: true do |t|
    t.integer  "underground_region_id"
    t.string   "underground_region_type"
    t.integer  "depth"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
