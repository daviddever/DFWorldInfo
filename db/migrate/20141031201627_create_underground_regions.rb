class CreateUndergroundRegions < ActiveRecord::Migration
  def change
    create_table :underground_regions do |t|
      t.int :underground_region_id
      t.string :underground_region_type
      t.int :depth

      t.timestamps null: false
    end
  end
end
