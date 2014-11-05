class CreateUndergroundRegions < ActiveRecord::Migration
  def change
    create_table :underground_regions do |t|
      t.integer :underground_region_id
      t.string :underground_region_type
      t.integer :depth

      t.timestamps null: false
    end
  end
end
