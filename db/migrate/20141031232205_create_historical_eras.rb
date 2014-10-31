class CreateHistoricalEras < ActiveRecord::Migration
  def change
    create_table :historical_eras do |t|
      t.string :name
      t.int :start_year

      t.timestamps null: false
    end
  end
end
