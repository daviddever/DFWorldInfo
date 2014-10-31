class CreateArtifacts < ActiveRecord::Migration
  def change
    create_table :artifacts do |t|
      t.int :artifact_id
      t.string :name
      t.string :item

      t.timestamps null: false
    end
  end
end
