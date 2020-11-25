class CreateMapStops < ActiveRecord::Migration[5.2]
  def change
    create_table :map_stops do |t|
      t.string :nid
      t.string :base
      t.string :llegada
      t.string :salida
      t.integer :carga
      t.string :destino
      t.references :map_route, foreign_key: true

      t.timestamps
    end
  end
end
