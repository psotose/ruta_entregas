class CreateMapRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :map_routes do |t|
      t.string :route_name
      t.string :file_name
      t.string :base
      t.datetime :date
      t.string :start_time
      t.string :delivery_time
      t.integer :cargo

      t.timestamps
    end
  end
end
