class MapStopsController < ApplicationController
  def show
    @map_stops = MapStop.where(map_route: @map_route)
  end

  private
  def set_map_route
    @map_route = MapRoute.find(params[:id])
  end 
end
