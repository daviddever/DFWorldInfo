class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.integer :site_id
      t.string :site_type
      t.string :name
      t.string :coords

      t.timestamps null: false
    end
  end
end
