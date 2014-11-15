class CreateHistoricalFigureSpheres < ActiveRecord::Migration
  def change
    create_table :historical_figure_spheres do |t|
      t.int :figure_id
      t.int :sphere_id

      t.timestamps null: false
    end
    add_index :historical_figure_spheres, :figure_id
    add_index :historical_figure_spheres, :sphere_id
    add_index :historical_figure_spheres, [:figure_id, :sphere_id], unique: True
  end
end
