class MapStopsController < ApplicationController
  before_action :set_map_route, only: :show

  def show 
    @map_stops = MapStop.where(map_route: @map_route)

    @markers = create_markers(@map_stops)

  end

  private
  def set_map_route
    @map_route = MapRoute.find(params[:id])
  end
  
  def create_markers(stops)
    #&markers=color:blue%7Clabel:S%7C40.702147,-74.015794
    markers = ''
    stops.each do |stop|
      markers += "&markers=color:blue%7Clabel:S%7C#{stop[:destino].gsub(';', ',')}"
    end
    markers
  end


end
