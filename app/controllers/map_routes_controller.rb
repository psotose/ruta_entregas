class MapRoutesController < ApplicationController
  def index
    @map_routes = MapRoute.all
  end

  def new
  end

  def create
    uploaded_file = params[:archivo]
    @map_stops = JSON.parse(uploaded_file.read)
    keys_base = ["nid", "base", "llegada", "salida", "carga", "destino"]
    valid = true
    # Valida que el file tiene todos los campos necesarios
    @map_stops.each do |stop|
      stop[:status] = 'OK'
      keys_base.each do |key|
        if !stop.keys.include?(key)
          stop[:status] = 'FAIL'
          valid = false
        end
      end
      # valida que los valores no sean ni nil ni vacíos
      stop.values.each do |value|
        if value == nil || value == ""
          stop[:status] = 'FAIL'
          valid = false
        end  
      end  
    end

    
    
  end

  def show
    
  end
end
