class CreateMapStops < ActiveRecord::Migration[5.2]
  def change
    create_table :map_stops do |t|
      t.string :nid
      t.integer :cargo
      t.string :start_time
      t.string :delivery_time
      t.references :map_route, foreign_key: true

      t.timestamps
    end
  end
end
