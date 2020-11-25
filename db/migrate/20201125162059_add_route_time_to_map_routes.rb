class AddRouteTimeToMapRoutes < ActiveRecord::Migration[5.2]
  def change
    add_column :map_routes, :route_time, :string
  end
end
