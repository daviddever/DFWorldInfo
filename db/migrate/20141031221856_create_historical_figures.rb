class CreateHistoricalFigures < ActiveRecord::Migration
  def change
    create_table :historical_figures do |t|
      t.int :figure_id
      t.string :name
      t.string :race
      t.string :caste
      t.int :appeared
      t.int :birth_year
      t.int :birth_seconds72
      t.int :death_year
      t.int :death_seconds72
      t.string :asscociated_type
      t.text :sphere
      t.text :hf_link
      t.text :entity_link
      t.string :entity_position_link
      t.int :site_link
      t.text :hf_skill
      t.int :ent_pop_link

      t.timestamps null: false
    end
  end
end
