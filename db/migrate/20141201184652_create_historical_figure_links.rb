class CreateHistoricalFigureLinks < ActiveRecord::Migration
  def change
    create_table :historical_figure_links do |t|
      t.integer :historical_figure_id
      t.integer :link_id
      t.string :link_type
      t.integer :link_strength

      t.timestamps null: false
    end
    add_index :historical_figure_links, :historical_figure_id
    add_index :historical_figure_links, :link_id
    add_index :historical_figure_links, [:historical_figure_id, :link_id], unique: true, name: 'index_historical_figure_links_on_hf_id_and_link_id'
  end
end
