class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.int :entity_id
      t.string :name

      t.timestamps null: false
    end
  end
end
