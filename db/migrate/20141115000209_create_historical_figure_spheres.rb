class CreateHistoricalFigureSpheres < ActiveRecord::Migration
  def change
    create_table :historical_figure_spheres do |t|
      t.integer :historical_figure_id
      t.integer :sphere_id

      t.timestamps null: false
    end
    add_index :historical_figure_spheres, :historical_figure_id
    add_index :historical_figure_spheres, :sphere_id
    add_index :historical_figure_spheres, [:historical_figure_id, :sphere_id], unique: true
  end
end
