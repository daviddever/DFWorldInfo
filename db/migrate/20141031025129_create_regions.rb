class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.int :region_id
      t.string :name
      t.string :region_type

      t.timestamps null: false
    end
  end
end
