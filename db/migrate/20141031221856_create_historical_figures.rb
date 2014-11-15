class CreateHistoricalFigures < ActiveRecord::Migration
  def change
    create_table :historical_figures do |t|
      t.integer :figure_id
      t.string :name
      t.string :race
      t.string :caste
      t.integer :appeared
      t.integer :birth_year
      t.integer :birth_seconds72
      t.integer :death_year
      t.integer :death_seconds72
      t.string :associated_type
      t.text :hf_link
      t.text :entity_link
      t.string :entity_position_link
      t.integer :site_link
      t.text :hf_skill
      t.integer :ent_pop_link

      t.timestamps null: false
    end
  end
end
