class MapRoutesController < ApplicationController
  def index
    @map_routes = MapRoute.all
  end

  def new
  end

  def create
    uploaded_file = params[:archivo]
    @map_stops = JSON.parse(uploaded_file.read)
    keys = ["nid", "base", "llegada", "salida", "carga", "destino"]
    @map_stops.each do |stop|
      stop[:status] = 'OK'
      keys.each do |key|
        if !stop.keys.include?(key)
          stop[:status] = 'FAIL'
        end  
      end  
    end
    
    
  end

  def show
    
  end
end
