class CreateEntityPopulations < ActiveRecord::Migration
  def change
    create_table :entity_populations do |t|
      t.int :entity_population_id

      t.timestamps null: false
    end
  end
end
